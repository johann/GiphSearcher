//
//  GiphyApi.swift
//  GiphSearcher
//
//  Created by Johann Kerr on 4/27/19.
//  Copyright © 2019 Johann Kerr. All rights reserved.
//

import Foundation

typealias GifSearchResult = ((Result<[Gif], Error>) -> Void)
struct GiphyApi {
    let service: WebProtocol
    init(_ service: WebProtocol = WebService()) { self.service = service }
    
    func getTrendingGifs(limit: Int = 25, completion: @escaping GifSearchResult) {
        fetchGifs(for: .trending(.gifs, "\(limit)"), handler: completion)
    }
    
    func searchGifs(searchTerm: String, limit: Int = 25, offset: Int = 0, completion: @escaping GifSearchResult) {
        fetchGifs(for: .search(.gifs, searchTerm, "\(limit)", "\(offset)"), handler: completion)
    }
    
    func getTrendingStickers(limit: Int = 25, completion: @escaping GifSearchResult) {
        fetchGifs(for: .trending(.stickers, "\(limit)"), handler: completion)
    }
    
    func searchStickers(searchTerm: String, limit: Int = 25, offset: Int = 0, completion: @escaping GifSearchResult) {
        fetchGifs(for: .search(.stickers, searchTerm, "\(limit)", "\(offset)"), handler: completion)
    }
    
    private func fetchGifs(for endpoint: Endpoint, handler: @escaping GifSearchResult) {
        service.request(using: endpoint, headers: [:], method: "GET") { (result) in
            switch result {
            case .success(let data):
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                do {
                    let gifSearch = try decoder.decode(GifSearch.self, from: data)
                    handler(.success(gifSearch.data))
                } catch {
                    handler(.failure(NetworkError.malformedJSON))
                }
            case .failure(let error):
                handler(.failure(error))
            }
        }
    }
}

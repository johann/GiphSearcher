//
//  Endpoint.swift
//  GiphSearcher
//
//  Created by Johann Kerr on 4/27/19.
//  Copyright © 2019 Johann Kerr. All rights reserved.
//
import Foundation

enum GifType: String {
    case gifs
    case stickers
}

enum Endpoint {
    
    case trending(GifType, String)
    case search(GifType, String, String, String)
    var apiBase: String {
        get {
            return "api.giphy.com"
        }
    }
    
    var path: String {
        let basePath = "/v1/"
        switch self {
        case .trending(let type, _):
            return "\(basePath)\(type)/trending"
        case .search(let type, _, _, _):
            return "\(basePath)\(type)/search"
        }
    }
    
    var queryItems: [URLQueryItem]? {
        var items = [URLQueryItem(name: "apiKey", value: Constants.apiKey)]
        switch self {
        case .trending(_, let limit):
            let queryItemLimit = URLQueryItem(name: "limit", value: limit)
            items += [queryItemLimit]
        case .search(_, let searchTerm, let limit, let offset):
            let queryItemSearch = URLQueryItem(name: "q", value: searchTerm)
            let queryItemLimit = URLQueryItem(name: "limit", value: limit)
            let queryOffsetLimit = URLQueryItem(name: "offset", value: offset)
            items += [queryItemSearch, queryItemLimit, queryOffsetLimit]
        }
        return items
    }
    
    
    func url() -> URL? {
        var components = URLComponents()
        components.scheme = "https"
        components.host = self.apiBase
        components.path = self.path
        if let queryItems = self.queryItems {
            components.queryItems = queryItems
        }
        return components.url
    }
}

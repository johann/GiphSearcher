//
//  WebService.swift
//  GiphSearcher
//
//  Created by Johann Kerr on 4/27/19.
//  Copyright © 2019 Johann Kerr. All rights reserved.
//

import Foundation

struct WebService: WebProtocol {

    func request(using session: URLSession = URLSession.shared, endPoint: Endpoint, headers: [String: String], method: String = "GET", result: @escaping WebResult) {
        
        guard let url = endPoint.url() else {  result(.failure(NetworkError.urlFailure)); return }
        var request = URLRequest(url: url)
        request.httpMethod = method
        for (header, headerValue) in headers {
            request.addValue(headerValue, forHTTPHeaderField: header)
        }
        URLSession.shared.dataTask(with: request) { (data, response, error) in
            if let error = error {
                result(.failure(error))
                return
            }
  
            guard let data = data else { result(.failure(NetworkError.missingData));  return }
            result(.success(data))
            }.resume()
    }
}

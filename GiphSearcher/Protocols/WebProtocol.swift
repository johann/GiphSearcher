//
//  WebProtocol.swift
//  GiphSearcher
//
//  Created by Johann Kerr on 4/29/19.
//  Copyright © 2019 Johann Kerr. All rights reserved.
//

import Foundation
typealias WebResult = (Result<Data, Error>) -> Void

protocol WebProtocol {
    func request(using session: URLSession, endPoint: Endpoint, headers: [String: String], method: String, result: @escaping WebResult)
    func request(using endPoint: Endpoint, headers: [String: String], method: String, result: @escaping WebResult)
    
}

extension WebProtocol {
    func request(using endPoint: Endpoint, headers: [String : String], method: String, result: @escaping WebResult) {
        request(using: URLSession.shared, endPoint: endPoint, headers: headers, method: method, result: result)
    }
}


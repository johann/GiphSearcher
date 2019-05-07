//
//  URLProtocolMock.swift
//  GiphSearcherTests
//
//  Created by Johann Kerr on 4/28/19.
//  Copyright © 2019 Johann Kerr. All rights reserved.
//

import Foundation

class URLProtocolMock: URLProtocol {
    static var testData: Data?
    override class func canInit(with request: URLRequest) -> Bool {
            return true
    }
    override class func canonicalRequest(for request: URLRequest) -> URLRequest {
        
        return request
    }
    
    override func startLoading() {
        self.client?.urlProtocol(self, didLoad: URLProtocolMock.testData ?? Data())
        self.client?.urlProtocolDidFinishLoading(self)
    }
    
    override func stopLoading() { }
}

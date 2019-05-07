//
//  GiphyApiTests.swift
//  GiphSearcherTests
//
//  Created by Johann Kerr on 4/28/19.
//  Copyright © 2019 Johann Kerr. All rights reserved.
//

import XCTest
@testable import GiphSearcher

class GiphyApiTests: XCTestCase {

    override func setUp() {
        
    }

    override func tearDown() {
    }
    
    func testTrendingGifsAreFetched() {
        struct WebServiceMock: WebProtocol {
            func request(using session: URLSession, endPoint: Endpoint, headers: [String : String], method: String, result: @escaping WebResult) {
                let data = Data(TestData.successfulFetchJSON.utf8)
                result(.success(data))
            }
        }
        
        GiphyApi(WebServiceMock()).getTrendingGifs { (result) in
            switch result {
            case .success(let gifs):
                XCTAssertTrue(gifs.count > 0)
            default:
                break
            }
        }
    }
    
    
    func testUrlFailureGifsCannotBeFetched() {
        struct WebServiceMock: WebProtocol {
            func request(using session: URLSession, endPoint: Endpoint, headers: [String : String], method: String, result: @escaping WebResult) {
                result(.failure(NetworkError.urlFailure))
            }
        }
        
        GiphyApi(WebServiceMock()).getTrendingGifs { (result) in
            switch result {
            case .success(_):
                break
            case .failure(let error):
                let networkError = error as! NetworkError
                XCTAssertTrue(networkError == NetworkError.urlFailure)
            }
        }
    }
    
    func testBadJSONGifsCannotBeFetched() {
        struct WebServiceMock: WebProtocol {
            func request(using session: URLSession, endPoint: Endpoint, headers: [String : String], method: String, result: @escaping WebResult) {
                result(.success(Data(TestData.unsuccessfulFetchJSON.utf8)))
            }
        }
        
        GiphyApi(WebServiceMock()).getTrendingGifs { (result) in
            switch result {
            case .success(_):
                break
            case .failure(let error):
                let networkError = error as! NetworkError
                
                XCTAssertTrue(networkError == NetworkError.malformedJSON)
            }
        }
    }
    
    func testTrendingGifsCannotBeFetched() {
        struct WebServiceMock: WebProtocol {
            func request(using session: URLSession, endPoint: Endpoint, headers: [String : String], method: String, result: @escaping WebResult) {
                result(.failure(NetworkError.urlFailure))
            }
        }
        
        GiphyApi(WebServiceMock()).getTrendingGifs { (result) in
            switch result {
            case .success(_):
                break
            case .failure(let error):
                XCTAssertTrue(error is NetworkError)
            }
        }
    }

    
    func testSearchedGifsAreFetched() {
        struct WebServiceMock: WebProtocol {
            func request(using session: URLSession, endPoint: Endpoint, headers: [String : String], method: String, result: @escaping WebResult) {
                let data = Data(TestData.successfulFetchJSON.utf8)
                result(.success(data))
            }
        }
        
        GiphyApi(WebServiceMock()).searchGifs(searchTerm: "cats", limit: 25, offset: 0) { (result) in
            switch result {
            case .success(let gifs):
                XCTAssertTrue(gifs.count > 0)
            case .failure(_):
                break
        }
    }
    
    }

}

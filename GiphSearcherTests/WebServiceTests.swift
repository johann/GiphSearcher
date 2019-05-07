//
//  WebServiceTests.swift
//  GiphSearcherTests
//
//  Created by Johann Kerr on 4/28/19.
//  Copyright © 2019 Johann Kerr. All rights reserved.
//

import XCTest
@testable import GiphSearcher

class WebServiceTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testWebserviceReturnsData() {
        let expectation = XCTestExpectation(description:
            "Fetching Trending Gifs")
        
        URLProtocolMock.testData = Data(TestData.successfulFetchJSON.utf8)
        let config = URLSessionConfiguration.ephemeral
        config.protocolClasses = [URLProtocolMock.self]
        let session = URLSession(configuration: config)
        
        WebService().request(using: session, endPoint: .trending(.gifs, "25"), headers: [:], method: "GET") { (result) in
            switch result {
            case .success(let data):
                XCTAssertTrue(!data.isEmpty)
                
            default:
                break
            }
            expectation.fulfill()
        }
        wait(for: [expectation], timeout: 5)
    }
    
    // TODO: Test failure cases

}

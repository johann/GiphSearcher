//
//  GifTests.swift
//  GiphSearcherTests
//
//  Created by Johann Kerr on 4/29/19.
//  Copyright © 2019 Johann Kerr. All rights reserved.
//

import XCTest
@testable import GiphSearcher

class GifTests: XCTestCase {

    func decode<T: Decodable>(_ type: T.Type, from jsonString: String) throws -> T {
        let jsonData = Data(jsonString.utf8)
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        
        let result = try decoder.decode(T.self, from: jsonData)
        return result
    }
    
    
    func testGifSearch() throws {
        _ = try decode(GifSearch.self, from: TestData.successfulFetchJSON)
    }
    
    func testGif() throws {
        _ = try decode(Gif.self, from: TestData.gifJSON)
    }
}

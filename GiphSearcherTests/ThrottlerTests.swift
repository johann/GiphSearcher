////
////  ThrottlerTests.swift
////  GiphSearcherTests
////
////  Created by Johann Kerr on 5/3/19.
////  Copyright © 2019 Johann Kerr. All rights reserved.
////
//
import XCTest
@testable import GiphSearcher

class ThrottlerTests: XCTestCase {
    func testThrottle() {
        let exp = expectation(description: "Run once and call immediately")
        
        var value = 0
        let updateCount: (() -> Void) = {
            value += 1
        }
        let throttler = Throttler(interval: 0.5)
        throttler.throttle(block: updateCount)
        throttler.throttle(block: updateCount)
        throttler.throttle(block: updateCount)
        throttler.throttle(block: updateCount)
        throttler.throttle(block: updateCount)
        throttler.throttle(block: updateCount)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(1)) {
            if value == 1 {
                exp.fulfill()
            } else {
                XCTFail("Failed to throttle")
            }
        }
        
        self.wait(for: [exp], timeout: 1)
    }

}

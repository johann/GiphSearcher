//
//  Date.swift
//  GiphSearcher
//
//  Created by Johann Kerr on 5/2/19.
//  Copyright © 2019 Johann Kerr. All rights reserved.
//

import Foundation

extension Date {
    static func seconds(from referenceDate: Date) -> TimeInterval {
        return Date().timeIntervalSince(referenceDate).rounded()
    }
}

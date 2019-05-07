//
//  NetworkError.swift
//  GiphSearcher
//
//  Created by Johann Kerr on 4/29/19.
//  Copyright © 2019 Johann Kerr. All rights reserved.
//

import Foundation

enum NetworkError: Error {
    case urlFailure
    case missingData
    case noResults
    case malformedJSON
}

extension NetworkError: LocalizedError {
    var errorDescription: String? {
        switch self {
        case .noResults:
            return NSLocalizedString("No results", comment: "")
        case .malformedJSON:
            return NSLocalizedString("Error parsing response", comment: "")
        case .urlFailure:
            return NSLocalizedString("Error with API host", comment: "")
        case .missingData:
            return NSLocalizedString("No data sent back", comment: "")
        }
    }
}

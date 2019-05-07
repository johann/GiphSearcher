//
//  Gif.swift
//  GiphSearcher
//
//  Created by Johann Kerr on 4/27/19.
//  Copyright © 2019 Johann Kerr. All rights reserved.
//

import Foundation


struct GifSearch: Codable {
    var data: [Gif]
}

struct Gif: Codable {
    var type: String
    var id: String
    var slug: String
    var url: String
    var bitlyGifUrl: String
    var rating: String
    var title: String
    var images: Images
}

struct Images: Codable {
    var original: Image
    var fixedWidth: Image
}

struct Image: Codable {
    var url: String
    var width: String
    var height: String
    var size: String
}

//
//  GifCollectionViewCell.swift
//  GiphSearcher
//
//  Created by Johann Kerr on 4/28/19.
//  Copyright © 2019 Johann Kerr. All rights reserved.
//

import UIKit
import Kingfisher

class GifCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var gifImageView: AnimatedImageView!
    
    func configureCell(gif: Gif) {
        if let url = URL(string: gif.images.fixedWidth.url), let path = Bundle.main.path(forResource: "loader", ofType: "gif") {
            do {
               let data = try Data(contentsOf: URL(fileURLWithPath: path))

                self.gifImageView.kf.indicatorType = .image(imageData: data)
            } catch {}
            
            
            self.gifImageView.kf.setImage(with: url, placeholder: nil, options: [.targetCache(ImageCache(name: "GiphSearcher")), .backgroundDecode], progressBlock: nil)
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        let longPressGestureRecognizer = UILongPressGestureRecognizer(target: self, action: #selector(handleTap))
        self.addGestureRecognizer(longPressGestureRecognizer)
    }
    
    @objc func handleTap() {
        if let image = gifImageView.image {
            UIPasteboard.general.image = image
            // TODO: Add alert
        }
        
    }
//    
//    override func prepareForReuse() {
//        super.prepareForReuse()
//        self.gifImageView.stopAnimating()
//        self.gifImageView.image = nil
//    }
}

//
//  GifDetailViewController.swift
//  GiphSearcher
//
//  Created by Johann Kerr on 4/29/19.
//  Copyright © 2019 Johann Kerr. All rights reserved.
//

import Foundation
import UIKit
import Kingfisher

class GifDetailViewController: UIViewController, Storyboardable {
    @IBOutlet weak var imageView: AnimatedImageView!
    var gif: Gif?
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        if let urlString = gif?.images.original.url, let url = URL(string: urlString), let path = Bundle.main.path(forResource: "loader", ofType: "gif") {
            
            do {
                let data = try Data(contentsOf: URL(fileURLWithPath: path))
                self.imageView.kf.indicatorType = .image(imageData: data)
            } catch {}
            
            self.imageView.kf.setImage(with: url)
        }
        
    }
    
    @IBAction func sharePressed(_ sender: Any) {
        guard let image = self.imageView.image else { return }
        let items = [image]
        let ac = UIActivityViewController(activityItems: items, applicationActivities: nil)
        present(ac, animated: true)
    }
}

//
//  StickerViewController.swift
//  GiphSearcher
//
//  Created by Johann Kerr on 4/29/19.
//  Copyright © 2019 Johann Kerr. All rights reserved.
//

import UIKit
import Kingfisher

class StickerViewController: UIViewController, Storyboardable {
    @IBOutlet weak var searchBar: SearchBar!
    @IBOutlet weak var collectionView: UICollectionView!
    var gifs: [Gif] = [] {
        didSet {
            DispatchQueue.main.async {
                self.collectionView.collectionViewLayout.invalidateLayout()
                self.collectionView.layoutSubviews()
                self.collectionView.reloadData()
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()
        fetchTrendingStickers()
    }
    
    func configureView() {
        title = "Stickers"
        collectionView.delegate = self
        collectionView.dataSource = self
        
        if let layout = collectionView.collectionViewLayout as? MosaicViewLayout {
            layout.numberOfColumns = 2
            layout.delegate = self
        }
        
        searchBar.onSearch = { [weak self] text in
            if text.isEmpty {
                self?.fetchTrendingStickers()
            } else {
                self?.searchStickers(for: text)
            }
        }
    }
    
    func fetchTrendingStickers() {
        self.gifs = []
        GiphyApi().getTrendingStickers { (result) in
            switch result {
            case .success(let gifSearch):
                self.gifs = gifSearch
                break
            case .failure(let error):
                self.displayError(error)
                break
            }
        }
    }
    
    
    func searchStickers(for searchTerm: String) {
        self.gifs = []
        GiphyApi().searchStickers(searchTerm: searchTerm) { (result) in
            switch result {
            case .success(let gifs):
                self.gifs = gifs
                break
            case .failure(let error):
                self.displayError(error)
                break
            }
        }
    }
    
    func displayError(_ error: Error) {
        let alert = UIAlertController(title: "Error", message: "\(error.localizedDescription)", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Dismiss", style: .default, handler: nil))
        DispatchQueue.main.async {
            self.present(alert, animated: true)
        }
    }
}



// MARK: CollectionViewDataSource
extension StickerViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return gifs.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Constants.stickerCell, for: indexPath) as? GifCollectionViewCell else { return UICollectionViewCell(frame: .zero)}
        if indexPath.row < self.gifs.count {
            let gif = gifs[indexPath.row]
            cell.configureCell(gif: gif)
        }
        return cell
    }
}

// MARK: CollectionViewDelegate
extension StickerViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didEndDisplaying cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Constants.stickerCell, for: indexPath) as? GifCollectionViewCell {
            cell.gifImageView.kf.cancelDownloadTask()
        }
    }
}

// MARK: MosaicLayoutDelegate
extension StickerViewController: MosaicLayoutDelegate {
    func collectionView(_ collectionView: UICollectionView, heightForItemAtIndexPath indexPath: IndexPath) -> CGFloat {
        if indexPath.row < self.gifs.count {
            let gif = self.gifs[indexPath.row]
            let heightString = gif.images.fixedWidth.height
            let height =  Int(heightString) ?? 0
            return CGFloat(height) 
        } else {
            return 0
        }
    }
}


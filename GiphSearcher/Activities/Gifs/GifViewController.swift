//
//  ViewController.swift
//  GiphSearcher
//
//  Created by Johann Kerr on 4/27/19.
//  Copyright © 2019 Johann Kerr. All rights reserved.
//

import UIKit
import Kingfisher

class GifViewController: UIViewController, Storyboardable {
    @IBOutlet weak var searchBar: SearchBar!
    @IBOutlet weak var collectionView: UICollectionView!
    var coordinator: GifCoordinator?
    
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
        fetchTrendingGifs()
        
    }
    
    func configureView() {
        title = "Gifs"
        collectionView.delegate = self
        collectionView.dataSource = self
       
        if let layout = collectionView.collectionViewLayout as? MosaicViewLayout {
            layout.numberOfColumns = 2
            layout.delegate = self
        }
        
        searchBar.onSearch = { [weak self] text in
            if text.isEmpty {
                self?.fetchTrendingGifs()
            } else {
                self?.searchGifs(for: text)
            }
        }
    }
    
    func fetchTrendingGifs() {
        self.gifs = []
        GiphyApi().getTrendingGifs { (result) in
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
    
    
    func searchGifs(for searchTerm: String) {
        self.gifs = []
        GiphyApi().searchGifs(searchTerm: searchTerm) { (result) in
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
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}


// MARK: CollectionViewDataSource
extension GifViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.gifs.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Constants.gifCell, for: indexPath) as? GifCollectionViewCell else { return UICollectionViewCell(frame: .zero)}
        cell.gifImageView.kf.cancelDownloadTask()
        if indexPath.row < self.gifs.count {
            let gif = gifs[indexPath.row]
            cell.configureCell(gif: gif)
        }
        return cell
    }
}

// MARK: CollectionViewDelegate
extension GifViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let gif = gifs[indexPath.row]
        self.coordinator?.showGifDetail(gif: gif)
    }
    
    func collectionView(_ collectionView: UICollectionView, didEndDisplaying cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Constants.gifCell, for: indexPath) as? GifCollectionViewCell {
            print("didenddisplaying")
            cell.gifImageView.stopAnimating()
            cell.gifImageView.kf.cancelDownloadTask()
            cell.removeFromSuperview()
//            cell.gifImageView.stopAnimating()
        }
    }
}

//// MARK: MosaicLayoutDelegate
extension GifViewController: MosaicLayoutDelegate {
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

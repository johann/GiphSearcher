//
//  SearchBar.swift
//  GiphSearcher
//
//  Created by Johann Kerr on 5/2/19.
//  Copyright © 2019 Johann Kerr. All rights reserved.
//

import UIKit

typealias CancelHandler = () -> Void
typealias SearchHandler = (String) -> (Void)

class SearchBar: UISearchBar {
    var throttler: Throttler? = Throttler()
    var onCancel: CancelHandler? = nil
    var onSearch: SearchHandler? = nil
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.delegate = self
    }
}


extension SearchBar: UISearchBarDelegate {
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        self.onCancel?()
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        self.onSearch?(self.text ?? "")
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        guard let throttler = self.throttler else {
            self.onSearch?(searchText)
            return
        }
        throttler.throttle {
            DispatchQueue.main.async {
                self.onSearch?(self.text ?? "")
            }
        }
    }
}

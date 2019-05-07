//
//  MainCoordinator.swift
//  GiphSearcher
//
//  Created by Johann Kerr on 4/29/19.
//  Copyright © 2019 Johann Kerr. All rights reserved.
//
import UIKit

class GifCoordinator: Coordinator {
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController = UINavigationController()) {
        self.navigationController = navigationController
        
        navigationController.navigationBar.prefersLargeTitles = true
        let vc = GifViewController.instantiate()
        vc.tabBarItem = UITabBarItem(title: "Gifs", image: UIImage(named: "picture"), tag: 0)
        vc.coordinator = self
        navigationController.viewControllers = [vc]
    }
    
    func showGifDetail(gif: Gif) {
        let vc = GifDetailViewController.instantiate()
        vc.gif = gif
        navigationController.pushViewController(vc, animated: true)
    }
}

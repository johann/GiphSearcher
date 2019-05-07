//
//  StickerCoordinator.swift
//  GiphSearcher
//
//  Created by Johann Kerr on 4/29/19.
//  Copyright © 2019 Johann Kerr. All rights reserved.
//

import UIKit
class StickerCoordinator: Coordinator {
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController = UINavigationController()) {
        self.navigationController = navigationController
        navigationController.navigationBar.prefersLargeTitles = true
        let vc = StickerViewController.instantiate()
        vc.tabBarItem = UITabBarItem(title: "Stickers", image: UIImage(named: "layers"), tag: 1)
        navigationController.viewControllers = [vc]
    }
}

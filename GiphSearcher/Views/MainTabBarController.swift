//
//  MainTabBarController.swift
//  GiphSearcher
//
//  Created by Johann Kerr on 4/29/19.
//  Copyright © 2019 Johann Kerr. All rights reserved.
//

import UIKit


class MainTabBarController: UITabBarController, Storyboardable {
    let main = GifCoordinator()
    let sticker = StickerCoordinator()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBar.tintColor = UIColor.black
        viewControllers = [main.navigationController, sticker.navigationController]
    }
}

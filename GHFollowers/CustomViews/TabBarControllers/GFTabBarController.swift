//
//  GFTabBarController.swift
//  GHFollowers
//
//  Created by Dima Shelkov on 9/3/20.
//  Copyright © 2020 Dima Shelkov. All rights reserved.
//

import UIKit

class GFTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        UITabBar.appearance().tintColor     = .systemGreen
        viewControllers                     = [createSearchNC(), createFavoritesNC()]
    }

    
    private func createSearchNC() -> UINavigationController {
        let searchVC            = SearchVC()
        searchVC.title          = "Search"
        searchVC.tabBarItem     = UITabBarItem(tabBarSystemItem: .search, tag: 0)
        
        return UINavigationController(rootViewController: searchVC)
    }
    
    
    private func createFavoritesNC() -> UINavigationController {
        let favoritesVC             = FavoritesListVC()
        favoritesVC.title           = "Favorites"
        favoritesVC.tabBarItem      = UITabBarItem(tabBarSystemItem: .favorites, tag: 1)
        
        return UINavigationController(rootViewController: favoritesVC)
    }
}

//
//  FollowerListVC.swift
//  GHFollowers
//
//  Created by Dima Shelkov on 8/26/20.
//  Copyright © 2020 Dima Shelkov. All rights reserved.
//

import UIKit

class FollowerListVC: UIViewController {
    
    var username: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        navigationController?.isNavigationBarHidden = false
        navigationController?.navigationBar.prefersLargeTitles = true
    }

}

//
//  UITableView+Ext.swift
//  GHFollowers
//
//  Created by Dima Shelkov on 9/4/20.
//  Copyright © 2020 Dima Shelkov. All rights reserved.
//

import UIKit

extension UITableView {
    
    func reloadDataOnMainThread() {
        DispatchQueue.main.async { self.reloadData() }
    }
    
    
    func removeExcessCells() {
        tableFooterView = UIView(frame: .zero)
    }
}

//
//  GFAvatarImageView.swift
//  GHFollowers
//
//  Created by Dima Shelkov on 8/27/20.
//  Copyright © 2020 Dima Shelkov. All rights reserved.
//

import UIKit

class GFAvatarImageView: UIImageView {
    
    private let cache               = NetworkManager.shared.cache
    private let placeholderImage    = Images.placeholder
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func configure() {
        layer.cornerRadius  = 10
        clipsToBounds       = true
        image               = placeholderImage
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    
    func downloadAvatarImage(fromURL url: String) {
        NetworkManager.shared.downloadImage(from: url) { [weak self] image in
            guard let self = self else { return }
            DispatchQueue.main.async { self.image = image }
        }
    }
}

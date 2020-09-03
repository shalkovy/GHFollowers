//
//  User.swift
//  GHFollowers
//
//  Created by Dima Shelkov on 8/27/20.
//  Copyright © 2020 Dima Shelkov. All rights reserved.
//

import Foundation

struct User: Codable {
    let login: String
    let avatarUrl: String
    var name: String?
    var location: String?
    var bio: String?
    let publicRepos: Int
    let publicGists: Int
    let htmlUrl: String
    let following: Int
    let followers: Int
    let createdAt: Date
}

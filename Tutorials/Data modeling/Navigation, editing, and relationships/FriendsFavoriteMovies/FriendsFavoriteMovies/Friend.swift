//
//  Friend.swift
//  FriendsFavoriteMovies
//
//  Created by Jeevan Chandra Joshi on 23/11/24.
//

import Foundation
import SwiftData

@Model
class Friend {
    var name: String

    init(name: String) {
        self.name = name
    }

    static let sampleData = [
        Friend(name: "FA"),
        Friend(name: "FB"),
        Friend(name: "FC"),
        Friend(name: "FD"),
        Friend(name: "FE"),
    ]
}

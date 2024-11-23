//
//  Movie.swift
//  FriendsFavoriteMovies
//
//  Created by Jeevan Chandra Joshi on 23/11/24.
//

import Foundation
import SwiftData

@Model
class Movie {
    var title: String
    var releaseDate: Date

    init(title: String, releaseDate: Date) {
        self.title = title
        self.releaseDate = releaseDate
    }

    static let sampleData = [
        Movie(title: "MA", releaseDate: .now),
        Movie(title: "MB", releaseDate: .now),
        Movie(title: "MC", releaseDate: .now),
        Movie(title: "MD", releaseDate: .now),
        Movie(title: "ME", releaseDate: .now),
    ]
}

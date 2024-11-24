//
//  Tile.swift
//  Alphabetizer
//
//  Created by Jeevan Chandra Joshi on 24/11/24.
//

import Foundation

struct Tile: Identifiable {
    let id = UUID()

    var word: String
    var position: CGPoint = .zero
    var flipped = false

    init(word: String) {
        self.word = word
    }

    var icon: String {
        "🤷"
    }
}

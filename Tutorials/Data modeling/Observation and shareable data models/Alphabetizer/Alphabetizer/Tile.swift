//
//  Tile.swift
//  Alphabetizer
//
//  Created by Jeevan Chandra Joshi on 24/11/24.
//

import Foundation

@Observable
class Tile: Identifiable {
    let id = UUID()

    var word: String
    var position: CGPoint = .zero
    var flipped = false

    init(word: String) {
        self.word = word
    }

    var icon: String {
        Vocabulary.icons[word] ?? "🤷"
    }
}

extension Tile: Equatable {
    static func == (lhs: Tile, rhs: Tile) -> Bool {
        lhs.id == rhs.id
    }
}

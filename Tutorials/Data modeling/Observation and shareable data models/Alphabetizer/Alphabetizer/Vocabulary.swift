//
//  Vocabulary.swift
//  Alphabetizer
//
//  Created by Jeevan Chandra Joshi on 24/11/24.
//

import Foundation

struct Vocabulary {
    let words: [String]

    func selectRandomWords(count: Int) -> [String] {
        var newWords = Array(words.shuffled().prefix(count))
        while newWords.sorted() == newWords {
            newWords.shuffle()
        }
        return newWords
    }
}

extension Vocabulary {
    static let icons: [String: String] = [
        "Bear": "🐻",
        "Crab": "🦀",
        "Duck": "🦆",
        "Frog": "🐸",
        "Fox": "🦊",
        "Goose": "🪿",
        "Horse": "🐴",
        "Jellyfish": "🪼",
        "Lizard": "🦎",
        "Octopus": "🐙",
        "Panda": "🐼",
        "Rabbit": "🐰",
        "Sheep": "🐑",
        "Whale": "🐳",
    ]

    static let landAnimals = Vocabulary(words: [
        "Bear",
        "Duck",
        "Frog",
        "Fox",
        "Goose",
        "Lizard",
        "Panda",
        "Rabbit",
        "Sheep",
    ])

    static let oceanAnimals = Vocabulary(words: [
        "Crab",
        "Jellyfish",
        "Octopus",
        "Whale",
    ])
}

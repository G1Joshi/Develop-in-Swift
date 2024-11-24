//
//  Alphabetizer.swift
//  Alphabetizer
//
//  Created by Jeevan Chandra Joshi on 24/11/24.
//

import Foundation

@Observable
class Alphabetizer {
    private let tileCount = 3
    private var vocab: Vocabulary

    var tiles = [Tile]()
    var score = 0
    var message: Message = .instructions

    init(vocab: Vocabulary = .landAnimals) {
        self.vocab = vocab
        startNewGame()
    }

    func submit() {
        let userSortedTiles = tiles.sorted {
            $0.position.x < $1.position.x
        }
        let alphabeticallySortedTiles = tiles.sorted {
            $0.word.lexicographicallyPrecedes($1.word)
        }
        let isAlphabetized = userSortedTiles == alphabeticallySortedTiles

        if isAlphabetized {
            score += 1
        }

        message = isAlphabetized ? .youWin : .tryAgain

        for (tile, correctTile) in zip(userSortedTiles, alphabeticallySortedTiles) {
            let tileIsAlphabetized = tile == correctTile
            tile.flipped = tileIsAlphabetized
        }

        Task { @MainActor in

            try await Task.sleep(for: .seconds(2))

            if isAlphabetized {
                startNewGame()
            }

            for tile in tiles {
                tile.flipped = false
            }

            message = .instructions
        }
    }

    private func startNewGame() {
        let newWords = vocab.selectRandomWords(count: tileCount)
        if tiles.isEmpty {
            for word in newWords {
                tiles.append(Tile(word: word))
            }
        } else {
            for (tile, word) in zip(tiles, newWords) {
                tile.word = word
            }
        }
    }
}

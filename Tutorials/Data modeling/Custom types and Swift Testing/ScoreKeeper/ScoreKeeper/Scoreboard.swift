//
//  Scoreboard.swift
//  ScoreKeeper
//
//  Created by Jeevan Chandra Joshi on 05/11/24.
//

import Foundation

struct Scoreboard {
    var players: [Player] = [
        Player(name: "", score: 0),
    ]

    var state = GameState.setup

    mutating func resetScores(to newValue: Int) {
        for index in players.indices {
            players[index].score = newValue
        }
    }
}

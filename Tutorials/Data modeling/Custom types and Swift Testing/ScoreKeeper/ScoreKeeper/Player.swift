//
//  Player.swift
//  ScoreKeeper
//
//  Created by Jeevan Chandra Joshi on 05/11/24.
//

import Foundation

struct Player: Identifiable {
    let id = UUID()

    var name: String
    var score: Int
}

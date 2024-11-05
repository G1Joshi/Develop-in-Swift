//
//  ScoreKeeperTests.swift
//  ScoreKeeperTests
//
//  Created by Jeevan Chandra Joshi on 05/11/24.
//

@testable import ScoreKeeper
import Testing

struct ScoreKeeperTests {
    @Test("Reset player scores", arguments: [0, 5, 10])
    func resetScores(to newValue: Int) async throws {
        var scoreboard = Scoreboard(
            players: [
                Player(name: "A", score: 10),
                Player(name: "B", score: 5),
                Player(name: "C", score: 0),
            ]
        )

        scoreboard.resetScores(to: newValue)

        for player in scoreboard.players {
            #expect(player.score == newValue)
        }
    }

    @Test("Highest score wins")
    func highestScoreWins() {
        var scoreboard = Scoreboard(
            players: [
                Player(name: "A", score: 10),
                Player(name: "B", score: 5),
                Player(name: "C", score: 0),
            ],
            state: .gameOver,
            doesHighestScoreWin: true
        )

        let winners = scoreboard.winners
        #expect(winners == [Player(name: "A", score: 10)])
    }

    @Test("Lowest score wins")
    func lowestScoreWins() {
        var scoreboard = Scoreboard(
            players: [
                Player(name: "A", score: 10),
                Player(name: "B", score: 5),
                Player(name: "C", score: 0),
            ],
            state: .gameOver,
            doesHighestScoreWin: false
        )

        let winners = scoreboard.winners
        #expect(winners == [Player(name: "C", score: 0)])
    }
}

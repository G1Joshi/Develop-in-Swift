//
//  ContentView.swift
//  ScoreKeeper
//
//  Created by Jeevan Chandra Joshi on 05/11/24.
//

import SwiftUI

struct ContentView: View {
    @State private var players: [Player] = [
        Player(name: "", score: 0),
    ]

    var body: some View {
        VStack(alignment: .leading) {
            Text("Score Keeper")
                .font(.title)
                .bold()
                .padding(.bottom)

            Grid {
                GridRow {
                    Text("Player")
                        .gridColumnAlignment(.leading)
                    Text("Score")
                }
                .font(.headline)

                ForEach($players) { $player in
                    GridRow {
                        TextField("Name", text: $player.name)
                        Text("\(player.score)")
                        Stepper("", value: $player.score)
                            .labelsHidden()
                    }
                }
            }
            .padding(.vertical)

            Button("Add Player ", systemImage: "plus") {
                players.append(Player(name: "", score: 0))
            }

            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

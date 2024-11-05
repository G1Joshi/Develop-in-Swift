//
//  SettingsView.swift
//  ScoreKeeper
//
//  Created by Jeevan Chandra Joshi on 05/11/24.
//

import SwiftUI

struct SettingsView: View {
    @Binding var doesHighestScoreWin: Bool
    @Binding var startingPoints: Int

    var body: some View {
        VStack(alignment: .leading) {
            Text("Game Rules.")
                .font(.headline)

            Divider()

            Picker("Win condition", selection: $doesHighestScoreWin) {
                Text("Highest Score Wins")
                    .tag(true)
                Text("Lowest Score Wins")
                    .tag(false)
            }

            Picker("Starting points", selection: $startingPoints) {
                Text("0 starting points")
                    .tag(0)
                Text("5 starting points")
                    .tag(5)
                Text("10 starting points")
                    .tag(10)
            }
        }
        .padding()
        .background(.thinMaterial, in: .rect(cornerRadius: 10))
    }
}

#Preview {
    @Previewable @State var doesHighestScoreWin = false
    @Previewable @State var startingPoints = 0
    SettingsView(doesHighestScoreWin: $doesHighestScoreWin, startingPoints: $startingPoints)
}

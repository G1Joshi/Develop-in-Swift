//
//  ContentView.swift
//  DiceRoller
//
//  Created by Jeevan Chandra Joshi on 04/11/24.
//

import SwiftUI

struct ContentView: View {
    @State private var numberOfDice: Int = 1

    var body: some View {
        VStack {
            Text("Dice Roller")
                .font(.largeTitle.lowercaseSmallCaps().bold())
                .foregroundStyle(.white)

            HStack {
                ForEach(1 ... numberOfDice, id: \.self) { _ in
                    DiceView()
                }
            }

            HStack {
                Button("Remove Dice", systemImage: "minus.circle.fill") {
                    withAnimation {
                        numberOfDice -= 1
                    }
                }
                .disabled(numberOfDice == 1)

                Button("Add Dice", systemImage: "plus.circle.fill") {
                    withAnimation {
                        numberOfDice += 1
                    }
                }
                .disabled(numberOfDice == 5)
            }
            .padding()
            .labelStyle(.iconOnly)
            .font(.title)
            .symbolRenderingMode(.multicolor)
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.appBackground)
        .tint(.white)
    }
}

#Preview {
    ContentView()
}

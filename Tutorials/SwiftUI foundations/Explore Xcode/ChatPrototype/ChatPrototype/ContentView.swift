//
//  ContentView.swift
//  ChatPrototype
//
//  Created by Jeevan Chandra Joshi on 04/11/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 25) {
            Text("Knock, knock!")
                .padding()
                .background(Color.yellow, in: RoundedRectangle(cornerRadius: 8))
                .shadow(radius: 4)
            Text("Who's there?")
                .padding()
                .background(Color.teal, in: RoundedRectangle(cornerRadius: 8))
                .shadow(radius: 4)
            Text("Chatterbox!")
                .padding()
                .background(Color.pink, in: RoundedRectangle(cornerRadius: 8))
                .shadow(radius: 4)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

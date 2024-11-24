//
//  ContentView.swift
//  Alphabetizer
//
//  Created by Jeevan Chandra Joshi on 24/11/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 20) {
            ScoreView()
            MessageView()
            Spacer()
            WordCanvas()
            Spacer()
            SubmitButton()
        }
        .padding(.top, 50)
    }
}

#Preview {
    ContentView()
        .environment(Alphabetizer())
}

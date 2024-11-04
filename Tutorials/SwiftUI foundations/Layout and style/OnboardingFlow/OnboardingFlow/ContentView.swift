//
//  ContentView.swift
//  OnboardingFlow
//
//  Created by Jeevan Chandra Joshi on 04/11/24.
//

import SwiftUI

let gradientColors: [Color] = [
    .gradientTop,
    .gradientBottom,
]

struct ContentView: View {
    var body: some View {
        TabView {
            WelcomePage()
            FeaturesPage()
        }
        .background(Gradient(colors: gradientColors))
        .foregroundStyle(.white)
        .tabViewStyle(.page)
    }
}

#Preview {
    ContentView()
}

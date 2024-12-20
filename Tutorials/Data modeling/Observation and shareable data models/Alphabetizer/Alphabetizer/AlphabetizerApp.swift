//
//  AlphabetizerApp.swift
//  Alphabetizer
//
//  Created by Jeevan Chandra Joshi on 24/11/24.
//

import SwiftUI

@main
struct AlphabetizerApp: App {
    @State private var alphabetizer = Alphabetizer()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(alphabetizer)
        }
    }
}

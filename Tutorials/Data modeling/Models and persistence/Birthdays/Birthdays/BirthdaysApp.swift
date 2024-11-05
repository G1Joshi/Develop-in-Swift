//
//  BirthdaysApp.swift
//  Birthdays
//
//  Created by Jeevan Chandra Joshi on 05/11/24.
//

import SwiftData
import SwiftUI

@main
struct BirthdaysApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: Friend.self)
        }
    }
}

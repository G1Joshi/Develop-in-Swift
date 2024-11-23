//
//  SampleData.swift
//  FriendsFavoriteMovies
//
//  Created by Jeevan Chandra Joshi on 23/11/24.
//

import Foundation
import SwiftData

@MainActor
class SampleData {
    static let shared = SampleData()

    var context: ModelContext {
        modelContainer.mainContext
    }

    let modelContainer: ModelContainer

    private init() {
        let schema = Schema([
            Friend.self,
            Movie.self,
        ])

        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: true)

        do {
            modelContainer = try ModelContainer(for: schema, configurations: [modelConfiguration])

            insertSampleData()

            try context.save()
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }

    private func insertSampleData() {
        for friend in Friend.sampleData {
            context.insert(friend)
        }

        for movie in Movie.sampleData {
            context.insert(movie)
        }
    }
}

//
//  MovieList.swift
//  FriendsFavoriteMovies
//
//  Created by Jeevan Chandra Joshi on 23/11/24.
//

import SwiftData
import SwiftUI

struct MovieList: View {
    @Query(sort: \Movie.title) private var movies: [Movie]
    @Environment(\.modelContext) private var context

    var body: some View {
        NavigationSplitView {
            List {
                ForEach(movies) { movie in
                    NavigationLink(movie.title) {
                        MovieDetail(movie: movie)
                    }
                }
                .onDelete(perform: deleteMovies(indexes:))
            }
            .navigationTitle("Movies")
            .toolbar {
                ToolbarItem {
                    Button("Add movie", systemImage: "plus", action: addMovie)
                }

                ToolbarItem(placement: .topBarTrailing) {
                    EditButton()
                }
            }
        } detail: {
            Text("Select a movie")
                .navigationTitle("Movie")
                .navigationBarTitleDisplayMode(.inline)
        }
    }

    private func addMovie() {
        context.insert(Movie(title: "", releaseDate: .now))
    }

    private func deleteMovies(indexes: IndexSet) {
        for index in indexes {
            context.delete(movies[index])
        }
    }
}

#Preview {
    MovieList()
        .modelContainer(SampleData.shared.modelContainer)
}

//
//  MovieDetail.swift
//  FriendsFavoriteMovies
//
//  Created by Jeevan Chandra Joshi on 23/11/24.
//

import SwiftUI

struct MovieDetail: View {
    @Bindable var movie: Movie

    var body: some View {
        Form {
            TextField("Movie title", text: $movie.title)
                .autocorrectionDisabled()

            DatePicker("Release date", selection: $movie.releaseDate)
        }
        .navigationTitle("Movie")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack {
        MovieDetail(movie: SampleData.shared.movie)
    }
}

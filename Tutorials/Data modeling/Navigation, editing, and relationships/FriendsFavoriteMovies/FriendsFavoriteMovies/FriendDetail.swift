//
//  FriendDetail.swift
//  FriendsFavoriteMovies
//
//  Created by Jeevan Chandra Joshi on 23/11/24.
//

import SwiftUI

struct FriendDetail: View {
    @Bindable var friend: Friend

    var body: some View {
        Form {
            TextField("Friend name", text: $friend.name)
                .autocorrectionDisabled()
        }
        .navigationTitle("Friend")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack {
        FriendDetail(friend: SampleData.shared.friend)
    }
}

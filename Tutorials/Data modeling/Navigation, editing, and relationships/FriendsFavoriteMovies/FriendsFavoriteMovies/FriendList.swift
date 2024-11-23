//
//  FriendList.swift
//  FriendsFavoriteMovies
//
//  Created by Jeevan Chandra Joshi on 23/11/24.
//

import SwiftData
import SwiftUI

struct FriendList: View {
    @Query(sort: \Friend.name) private var friends: [Friend]
    @Environment(\.modelContext) private var context

    var body: some View {
        NavigationSplitView {
            List(friends) { friend in
                NavigationLink(friend.name) {
                    Text(friend.name)
                        .navigationTitle("Friend")
                        .navigationBarTitleDisplayMode(.inline)
                }
            }
            .navigationTitle("Friends")
        } detail: {
            Text("Select a friend")
                .navigationTitle("Friend")
                .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    FriendList()
        .modelContainer(SampleData.shared.modelContainer)
}

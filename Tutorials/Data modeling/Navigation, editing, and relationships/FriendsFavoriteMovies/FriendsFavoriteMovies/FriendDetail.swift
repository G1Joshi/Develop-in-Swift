//
//  FriendDetail.swift
//  FriendsFavoriteMovies
//
//  Created by Jeevan Chandra Joshi on 23/11/24.
//

import SwiftUI

struct FriendDetail: View {
    @Environment(\.dismiss) private var dismiss
    @Environment(\.modelContext) private var context

    @Bindable var friend: Friend
    let isNew: Bool

    init(friend: Friend, isNew: Bool = false) {
        self.friend = friend
        self.isNew = isNew
    }

    var body: some View {
        Form {
            TextField("Friend name", text: $friend.name)
                .autocorrectionDisabled()
        }
        .navigationTitle(isNew ? "New friend" : "Friend")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            if isNew {
                ToolbarItem(placement: .confirmationAction) {
                    Button("Save") {
                        dismiss()
                    }
                }

                ToolbarItem(placement: .cancellationAction) {
                    Button("Cancel") {
                        context.delete(friend)
                        dismiss()
                    }
                }
            }
        }
    }
}

#Preview {
    NavigationStack {
        FriendDetail(friend: SampleData.shared.friend)
    }
}

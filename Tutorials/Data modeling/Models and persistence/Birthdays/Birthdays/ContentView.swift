//
//  ContentView.swift
//  Birthdays
//
//  Created by Jeevan Chandra Joshi on 05/11/24.
//

import SwiftUI

struct ContentView: View {
    @State private var friends: [Friend] = []

    @State private var newName: String = ""
    @State private var newDate: Date = .now

    var body: some View {
        NavigationStack {
            List(friends, id: \.name) { friend in
                HStack {
                    Text(friend.name)

                    Spacer()

                    Text(friend.birthday, format: .dateTime.day().month().year())
                }
            }
            .navigationTitle("Birthdays")
            .safeAreaInset(edge: .bottom) {
                VStack(spacing: 20) {
                    Text("New Birthday")
                        .font(.headline)

                    DatePicker(selection: $newDate, in: Date.distantPast ... Date.now, displayedComponents: .date) {
                        TextField("Name", text: $newName)
                            .textFieldStyle(.roundedBorder)
                    }

                    Button("Save") {
                        let newFriend = Friend(name: newName, birthday: newDate)
                        friends.append(newFriend)

                        newName = ""
                        newDate = .now
                    }
                    .bold()
                }
                .padding()
                .background(.bar)
            }
        }
    }
}

#Preview {
    ContentView()
}

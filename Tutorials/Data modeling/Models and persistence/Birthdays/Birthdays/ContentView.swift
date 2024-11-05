//
//  ContentView.swift
//  Birthdays
//
//  Created by Jeevan Chandra Joshi on 05/11/24.
//

import SwiftData
import SwiftUI

struct ContentView: View {
    @Environment(\.modelContext) private var context
    @Query(sort: \Friend.birthday) private var friends: [Friend]

    @State private var newName: String = ""
    @State private var newDate: Date = .now

    var body: some View {
        NavigationStack {
            List(friends) { friend in
                HStack {
                    if friend.isBirthdayToday {
                        Image(systemName: "birthday.cake")
                    }

                    Text(friend.name)
                        .bold(friend.isBirthdayToday)

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

                    HStack {
                        Button("Save") {
                            let newFriend = Friend(name: newName, birthday: newDate)
                            context.insert(newFriend)

                            newName = ""
                            newDate = .now
                        }
                        .bold()

                        Button("Reset") {
                            do {
                                try context.delete(model: Friend.self)
                            } catch {
                                fatalError()
                            }
                        }
                    }
                }
                .padding()
                .background(.bar)
            }
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Friend.self, inMemory: true)
}

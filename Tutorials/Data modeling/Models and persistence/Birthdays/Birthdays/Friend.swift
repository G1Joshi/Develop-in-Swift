//
//  Friend.swift
//  Birthdays
//
//  Created by Jeevan Chandra Joshi on 05/11/24.
//

import Foundation
import SwiftData

@Model
class Friend {
    var name: String
    var birthday: Date

    init(name: String, birthday: Date) {
        self.name = name
        self.birthday = birthday
    }

    var isBirthdayToday: Bool {
        Calendar.current.isDateInToday(birthday)
    }
}

//
//  MessageView.swift
//  Alphabetizer
//
//  Created by Jeevan Chandra Joshi on 24/11/24.
//

import SwiftUI

struct MessageView: View {
    @Environment(Alphabetizer.self) private var alphabetizer

    var body: some View {
        Text(alphabetizer.message.rawValue)
            .font(.largeTitle)
    }
}

#Preview {
    let alphabetizer = Alphabetizer()
    alphabetizer.message = .youWin
    return MessageView()
        .environment(alphabetizer)
}

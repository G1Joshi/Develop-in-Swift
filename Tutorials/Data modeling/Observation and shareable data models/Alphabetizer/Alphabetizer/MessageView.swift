//
//  MessageView.swift
//  Alphabetizer
//
//  Created by Jeevan Chandra Joshi on 24/11/24.
//

import SwiftUI

struct MessageView: View {
    @State private var message = "Place the tiles in alphabetical order"

    var body: some View {
        Text(message)
            .font(.largeTitle)
    }
}

#Preview {
    MessageView()
}

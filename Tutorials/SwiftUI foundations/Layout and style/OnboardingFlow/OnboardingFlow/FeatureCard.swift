//
//  FeatureCard.swift
//  OnboardingFlow
//
//  Created by Jeevan Chandra Joshi on 04/11/24.
//

import SwiftUI

struct FeatureCard: View {
    let iconName: String
    let description: String

    var body: some View {
        HStack {
            Image(systemName: iconName)
                .font(.largeTitle)
                .frame(width: 50)
                .padding(.trailing, 10)

            Text(description)

            Spacer()
        }
        .padding()
        .background {
            RoundedRectangle(cornerRadius: 12)
                .foregroundStyle(.tint)
                .opacity(0.5)
                .brightness(-0.5)
        }
        .foregroundStyle(.white)
    }
}

#Preview {
    FeatureCard(iconName: "", description: "")
}

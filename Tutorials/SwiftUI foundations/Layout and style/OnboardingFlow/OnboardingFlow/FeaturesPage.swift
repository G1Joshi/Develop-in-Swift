//
//  FeaturesPage.swift
//  OnboardingFlow
//
//  Created by Jeevan Chandra Joshi on 04/11/24.
//

import SwiftUI

struct FeaturesPage: View {
    var body: some View {
        VStack(spacing: 30) {
            Text("Features")
                .font(.title)
                .fontWeight(.semibold)
                .padding(.bottom)
                .padding(.top, 100)

            FeatureCard(iconName: "person.2.crop.square.stack.fill", description: "Person crop square stack fill")

            FeatureCard(iconName: "quote.bubble.fill", description: "Quote bubblt fill")

            FeatureCard(iconName: "folder.fill.badge.person.crop", description: "Folder fill badge person crop")

            Spacer()
        }
        .padding()
    }
}

#Preview {
    FeaturesPage()
}

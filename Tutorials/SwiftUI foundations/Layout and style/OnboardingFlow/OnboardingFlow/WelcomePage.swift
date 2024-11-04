//
//  WelcomePage.swift
//  OnboardingFlow
//
//  Created by Jeevan Chandra Joshi on 04/11/24.
//

import SwiftUI

struct WelcomePage: View {
    var body: some View {
        VStack {
            ZStack {
                RoundedRectangle(cornerRadius: 30)
                    .frame(width: 150, height: 150)
                    .foregroundStyle(.tint)

                Image(systemName: "figure.2.and.child.holdinghands")
                    .font(.system(size: 75))
                    .foregroundStyle(.white)
            }
            .padding(.bottom)

            Text("Welcome to MyApp")
                .font(Font.title)
                .fontWeight(.semibold)
                .fontDesign(.rounded)

            Text("Welcome to the app. Please log in to continue.")
                .font(Font.title2)
                .fontWeight(.light)
                .multilineTextAlignment(.center)
        }
        .padding()
    }
}

#Preview {
    WelcomePage()
}

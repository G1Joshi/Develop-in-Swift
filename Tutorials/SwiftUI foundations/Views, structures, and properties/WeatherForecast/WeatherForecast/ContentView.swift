//
//  ContentView.swift
//  WeatherForecast
//
//  Created by Jeevan Chandra Joshi on 04/11/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                DayForecast(day: "Mon", isRainy: false, high: 70, low: 50)
                DayForecast(day: "Tue", isRainy: true, high: 60, low: 40)
            }
            HStack {
                DayForecast(day: "Wed", isRainy: false, high: 65, low: 45)
                DayForecast(day: "Thu", isRainy: true, high: 75, low: 60)
            }
            HStack {
                DayForecast(day: "Fri", isRainy: false, high: 70, low: 60)
                DayForecast(day: "Sat", isRainy: true, high: 65, low: 55)
            }
            DayForecast(day: "Sun", isRainy: false, high: 80, low: 70)
        }
    }
}

#Preview {
    ContentView()
}

struct DayForecast: View {
    let day: String
    let isRainy: Bool
    let high: Int
    let low: Int

    var iconName: String {
        if isRainy {
            "cloud.rain.fill"
        } else {
            "sun.max.fill"
        }
    }

    var iconColor: Color {
        if isRainy {
            Color.blue
        } else {
            Color.yellow
        }
    }

    var body: some View {
        VStack {
            Text(day)
                .font(Font.headline)
            Image(systemName: iconName)
                .foregroundStyle(iconColor)
                .font(Font.largeTitle)
                .padding(4)
            Text("High: \(high)°")
                .fontWeight(Font.Weight.semibold)
            Text("Low: \(low)°")
                .fontWeight(Font.Weight.medium)
                .foregroundStyle(Color.secondary)
        }
        .padding()
    }
}

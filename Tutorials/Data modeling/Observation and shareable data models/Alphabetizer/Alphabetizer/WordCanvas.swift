//
//  WordCanvas.swift
//  Alphabetizer
//
//  Created by Jeevan Chandra Joshi on 24/11/24.
//

import SwiftUI

struct WordCanvas: View {
    @State private var tiles: [Tile] = [
        Tile(word: "First"),
        Tile(word: "Second"),
        Tile(word: "Third")
    ]

    var body: some View {
        ZStack {
            HStack(spacing: Tile.spacing) {
                ForEach(tiles) { _ in
                    Rectangle()
                        .fill(Color.purple.opacity(0.2))
                        .offset(y: -(Tile.size + Tile.halfSize))
                        .frame(width: Tile.placeholderSize, height: Tile.placeholderSize)
                }
            }
            ForEach($tiles) { $tile in
                TileView(tile: tile)
                    .offset(tile.centeredOffset)
                    .gesture(DragGesture().onChanged { value in
                        tile.position = value.location
                    })
            }
            .offset(x: Tile.halfSize)
        }
        .onAppear {
            setInitialTilePositions()
        }
    }
}

#Preview {
    WordCanvas()
}

extension WordCanvas {
    private func setInitialTilePositions() {
        for (index, tile) in tiles.enumerated() {
            let midpoint = Double(tiles.count - 1) / 2.0
            let position = Double(index) - midpoint

            tiles[index].position.x = (Tile.size + Tile.spacing) * position
            tiles[index].position.y = Tile.halfSize
        }
    }
}

extension Tile {
    static let placeholderSize = size - 20.0
    static let size = 200.0
    static let halfSize = 100.0
    static let spacing = 50.0

    var centeredOffset: CGSize {
        CGSize(width: position.x - Tile.halfSize, height: position.y - Tile.halfSize)
    }
}
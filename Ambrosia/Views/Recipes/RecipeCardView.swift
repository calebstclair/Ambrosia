//
//  RecipeCardView.swift
//  Ambrosia
//
//  Created by Caleb St. Clair on 7/4/25.
//

import SwiftUI
import CoreData

struct RecipeCardView: View {
    let recipe: Recipe

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            if let image = recipe.image, let imageData = image.imageData, let uiImage = UIImage(data: imageData) {
                SwiftUI.Image(uiImage: uiImage)
                    .resizable()
                    .scaledToFill()
                    .frame(height: 160)
                    .clipped()
                    .cornerRadius(12)
            } else {
                Rectangle()
                    .fill(Color.gray.opacity(0.2))
                    .frame(height: 160)
                    .overlay(Text("No Image").foregroundColor(.gray))
                    .cornerRadius(12)
            }

            Text(recipe.title ?? "Untitled")
                .font(.headline)

            if let desc = recipe.dest, !desc.isEmpty {
                Text(desc)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                    .lineLimit(2)
            }
        }
        .padding()
        .background(RoundedRectangle(cornerRadius: 16).fill(Color.white).shadow(radius: 3))
    }
}

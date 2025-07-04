//
//  RecipeDetailView.swift
//  Ambrosia
//
//  Created by Caleb St. Clair on 7/4/25.
//

import SwiftUI
import CoreData

struct RecipeDetailView: View {
    var recipe: Recipe

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text(recipe.title ?? "Untitled Recipe")
                .font(.largeTitle)
            Text("Created at: \(recipe.createdAt ?? Date())")
                .font(.subheadline)
                .foregroundColor(.secondary)
            Spacer()
        }
        .padding()
        .navigationTitle("Recipe Details")
    }
}

#Preview {

}

//
//  AmbrosiaApp.swift
//  Ambrosia
//
//  Created by Caleb St. Clair on 7/4/25.
//

import SwiftUI

@main
struct AmbrosiaApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}

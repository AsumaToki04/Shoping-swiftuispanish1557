//
//  ShopingApp.swift
//  Shoping
//
//  Created by DAMII on 3/12/24.
//

import SwiftUI

@main
struct ShopingApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}

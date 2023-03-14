//
//  TradeByBataApp.swift
//  TradeByBata
//
//  Created by Olga Yurchuk on 14.03.2023.
//

import SwiftUI

@main
struct TradeByBataApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}

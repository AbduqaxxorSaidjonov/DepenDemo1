//
//  DepenDemo1App.swift
//  DepenDemo1
//
//  Created by Abduqaxxor on 10/3/22.
//

import SwiftUI

@main
struct DepenDemo1App: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}

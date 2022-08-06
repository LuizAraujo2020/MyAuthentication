//
//  MyAuthenticationApp.swift
//  Shared
//
//  Created by Luiz Araujo on 06/08/22.
//

import SwiftUI

@main
struct MyAuthenticationApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}

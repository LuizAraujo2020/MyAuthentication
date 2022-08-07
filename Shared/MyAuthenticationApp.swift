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
    @StateObject var authentication = Authentication()
    var body: some Scene {
        WindowGroup {
            if authentication.isValidated {
                    ContentView()
                        .environment(\.managedObjectContext, persistenceController.container.viewContext)
                        .environmentObject(authentication)
            } else {
                LoginView()
                    .environmentObject(authentication)
            }
        }
    }
}

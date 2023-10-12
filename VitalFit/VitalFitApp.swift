//
//  VitalFitApp.swift
//  VitalFit
//
//  Created by Melody Flavel on 12/10/2023.
//

import SwiftUI

@main
struct VitalFitApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView { // Ensures that the entire application is in a Navigation View.
                HomeView()
            }
        }
    }
}

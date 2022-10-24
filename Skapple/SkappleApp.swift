//
//  SkappleApp.swift
//  Skapple
//
//  Created by Kasper Spychala on 11/10/2022.
//

import SwiftUI

@main
struct SkappleApp: App {

    // MARK: Stored Properties
    @StateObject var coordinator = MainCoordinator()

    // MARK: Scenes
    var body: some Scene {
        WindowGroup {
            MainCoordinatorView(coordinator: coordinator)
        }
    }
}

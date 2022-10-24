//
//  MainCoordinatorView.swift
//  Skapple
//
//  Created by Kasper Spychala on 24/10/2022.
//

import SwiftUI

struct MainCoordinatorView: View {

    // MARK: Stored Properties
    @ObservedObject var coordinator: MainCoordinator

    // MARK: Views
    var body: some View {
        TabView(selection: $coordinator.tab) {
            ScaleCoordinatorView(coordinator: coordinator.scaleCoordinator)
                .tabItem { Label("Scale", systemImage: "scalemass.fill") }
                .tag(AppTab.scale)

            HistoryCoordinatorView(coordinator: coordinator.historyCoordinator)
                .tabItem { Label("History", systemImage: "clock.arrow.circlepath") }
                .tag(AppTab.history)

            SettingsCoordinatorView(coordinator: coordinator.settingsCoordinator)
                .tabItem { Label("Settings", systemImage: "gear") }
                .tag(AppTab.settings)
        }
    }
}

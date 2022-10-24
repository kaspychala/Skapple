//
//  SettingsCoordinatorView.swift
//  Skapple
//
//  Created by Kasper Spychala on 24/10/2022.
//

import SwiftUI

struct SettingsCoordinatorView: View {
    
    // MARK: Stored Properties
    @ObservedObject var coordinator: SettingsCoordinator

    // MARK: Views
    var body: some View {
        NavigationView {
            SettingsView(viewModel: coordinator.viewModel)
        }
    }
}

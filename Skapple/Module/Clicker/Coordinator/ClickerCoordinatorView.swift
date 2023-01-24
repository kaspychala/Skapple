//
//  ClickerCoordinatorView.swift
//  Skapple
//
//  Created by Kasper Spychala on 24/01/2023.
//

import SwiftUI

struct ClickerCoordinatorView: View {

    // MARK: Stored Properties
    @ObservedObject var coordinator: ClickerCoordinator

    // MARK: Views
    var body: some View {
        NavigationView {
            ClickerView(viewModel: coordinator.viewModel)
        }
    }
}

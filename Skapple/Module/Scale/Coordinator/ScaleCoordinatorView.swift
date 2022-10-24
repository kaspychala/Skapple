//
//  ScaleCoordinatorView.swift
//  Skapple
//
//  Created by Kasper Spychala on 24/10/2022.
//

import SwiftUI

struct ScaleCoordinatorView: View {
    
    // MARK: Stored Properties
    @ObservedObject var coordinator: ScaleCoordinator

    // MARK: Views
    var body: some View {
        NavigationView {
            ScaleView(viewModel: coordinator.viewModel)
        }
    }
}

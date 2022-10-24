//
//  HistoryCoordinatorView.swift
//  Skapple
//
//  Created by Kasper Spychala on 24/10/2022.
//

import SwiftUI

struct HistoryCoordinatorView: View {
    
    // MARK: Stored Properties
    @ObservedObject var coordinator: HistoryCoordinator

    // MARK: Views
    var body: some View {
        NavigationView {
            HistoryView(viewModel: coordinator.viewModel)
        }
    }
}

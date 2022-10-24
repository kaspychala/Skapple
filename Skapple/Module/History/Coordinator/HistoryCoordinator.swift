//
//  HistoryCoordinator.swift
//  Skapple
//
//  Created by Kasper Spychala on 24/10/2022.
//

import SwiftUI

class HistoryCoordinator: ObservableObject, Identifiable {
    
    @Published var viewModel: HistoryViewModel

    init(title: String) {
        self.viewModel = .init(title: title)
        self.viewModel.coordinator = self
    }
}

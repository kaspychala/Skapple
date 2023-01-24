//
//  ClickerCoordinator.swift
//  Skapple
//
//  Created by Kasper Spychala on 24/01/2023.
//

import Foundation

class ClickerCoordinator: ObservableObject, Identifiable {

    @Published var viewModel: ClickerViewModel

    init(title: String) {
        self.viewModel = .init(title: title)
        self.viewModel.coordinator = self
    }
}

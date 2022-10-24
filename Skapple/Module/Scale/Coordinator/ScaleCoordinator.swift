//
//  ScaleCoordinator.swift
//  Skapple
//
//  Created by Kasper Spychala on 24/10/2022.
//

import SwiftUI

class ScaleCoordinator: ObservableObject, Identifiable {
    
    @Published var viewModel: ScaleViewModel

    init(title: String) {
        self.viewModel = .init(title: title)
        self.viewModel.coordinator = self
    }
}

//
//  ClickerViewModel.swift
//  Skapple
//
//  Created by Kasper Spychala on 24/01/2023.
//

import Foundation

class ClickerViewModel: ObservableObject {

    @Published var title: String
    weak var coordinator: ClickerCoordinator?

    init(title: String) {
        self.title = title
    }
}

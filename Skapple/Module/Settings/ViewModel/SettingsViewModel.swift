//
//  SettingsViewModel.swift
//  Skapple
//
//  Created by Kasper Spychala on 24/10/2022.
//

import Foundation

class SettingsViewModel: ObservableObject {

    @Published var title: String
    weak var coordinator: SettingsCoordinator?

    init(title: String) {
        self.title = title
    }
}

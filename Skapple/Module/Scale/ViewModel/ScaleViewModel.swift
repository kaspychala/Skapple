//
//  HomeViewModel.swift
//  Skapple
//
//  Created by Kasper Spychala on 11/10/2022.
//

import SwiftUI

class ScaleViewModel: ObservableObject {
    
    @Published var title: String
    weak var coordinator: ScaleCoordinator?

    init(title: String) {
        self.title = title
    }
}

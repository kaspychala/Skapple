//
//  HistoryViewModel.swift
//  Skapple
//
//  Created by Kasper Spychala on 24/10/2022.
//

import Foundation

class HistoryViewModel: ObservableObject {
    
    @Published var title: String
    weak var coordinator: HistoryCoordinator?

    init(title: String) {
        self.title = title
    }
}

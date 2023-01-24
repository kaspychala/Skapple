//
//  MainCoordinator.swift
//  Skapple
//
//  Created by Kasper Spychala on 24/10/2022.
//

import Foundation
import SwiftUI

enum AppTab {
    case scale
    case history
    case clicker
    case settings
}

class MainCoordinator: ObservableObject {
    
    @Published var tab = AppTab.scale
    @Published var scaleCoordinator: ScaleCoordinator
    @Published var historyCoordinator: HistoryCoordinator
    @Published var clickerCoordinator: ClickerCoordinator
    @Published var settingsCoordinator: SettingsCoordinator

    init() {
        self.scaleCoordinator = .init(title: "Scale screen")
        self.historyCoordinator = .init(title: "History screen")
        self.clickerCoordinator = .init(title: "Clicker screen")
        self.settingsCoordinator = .init(title: "Settings screen")
    }
}

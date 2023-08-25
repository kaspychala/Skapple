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
    let foodApiClient: FoodAPIClient
    @Published var foods: [Food] = []
    @Published var hasError: Bool = false

    private var limit = 15
    private var page = 0

    init(title: String) {
        self.title = title
        self.foodApiClient = FoodAPIClient()
    }

    private func hasReachedLastFood(food: Food) -> Bool {
        return foods.last?.id == food.id
    }

    func loadMoreFoods(food: Food) async {
        let isLastFood = hasReachedLastFood(food: food)
        if isLastFood {
            page += 1
            await getFoods(limit: String(limit), page: String(page))
        }
    }

    @MainActor
    func getFoods(limit: String = "15", page: String = "0") async {
        do {
            let response = try await foodApiClient.getFoods(limit: limit, page: page)
            foods.append(contentsOf: response)
        } catch {
            hasError = true
        }
    }
}

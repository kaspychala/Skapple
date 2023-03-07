//
//  FoodApiClient.swift
//  Skapple
//
//  Created by Kasper Spychala on 07/03/2023.
//

import Foundation

protocol FoodProtocol {

    func getFoods() async throws -> [Food]
}

class FoodAPIClient: FoodProtocol {

    func getFoods() async throws -> [Food] {
        let response: FoodResponse = try await APINetworkRequest.request(apiRouter: FoodAPIRouter.getFoods)
        return response.foods
    }
}

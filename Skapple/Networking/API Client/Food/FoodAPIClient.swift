//
//  FoodApiClient.swift
//  Skapple
//
//  Created by Kasper Spychala on 07/03/2023.
//

import Foundation

protocol FoodProtocol {

    func getFoods(limit: String, page: String) async throws -> [Food]
}

class FoodAPIClient: FoodProtocol {

    func getFoods(limit: String, page: String) async throws -> [Food] {
        let response: FoodResponse = try await APINetworkRequest.request(
            apiRouter: FoodAPIRouter.getFoods(
                limit: limit, page: page))
        return response.foods
    }
}

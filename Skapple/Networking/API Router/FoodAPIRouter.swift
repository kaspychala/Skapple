//
//  FoodRouter.swift
//  Skapple
//
//  Created by Kasper Spychala on 07/03/2023.
//

import Foundation

enum FoodAPIRouter: APIRouter {
    case getFoods
//    case putFood(foodId: Int)
//    case postFood(foodId: Int)
//    case deleteFood(foodId: Int)

    var host: String {
        switch self {
        case .getFoods:
            return "localhost"
        }
    }

    var scheme: String {
        switch self {
        case .getFoods:
            return "http"
        }
    }

    var path: String {
        switch self {
        case .getFoods:
            return "/foods"
        }
    }

    var method: String {
        switch self {
        case .getFoods:
            return "GET"
        }
    }

    var parameters: [URLQueryItem] {
        switch self {
        case .getFoods:
            return []
        }
    }
}

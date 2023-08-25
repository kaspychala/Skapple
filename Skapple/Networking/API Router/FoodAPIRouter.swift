//
//  FoodRouter.swift
//  Skapple
//
//  Created by Kasper Spychala on 07/03/2023.
//

import Foundation

enum FoodAPIRouter: APIRouter {
    case getFoods(limit: String, page: String)
//    case putFood(foodId: Int)
//    case postFood(foodId: Int)
//    case deleteFood(foodId: Int)

    var host: String {
        switch self {
        case .getFoods:
            return "192.168.0.31"
        }
    }

    var port: Int {
        switch self {
        case .getFoods:
            return 8080
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
            return "/foods/paginate"
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
        case .getFoods(let limit, let page):
            return [URLQueryItem(name: "limit", value: limit),
                    URLQueryItem(name: "page", value: page)]
        }
    }
}

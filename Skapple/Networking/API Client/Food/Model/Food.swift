//
//  Food.swift
//  Skapple
//
//  Created by Kasper Spychala on 07/03/2023.
//

import Foundation

struct Food: Codable, Hashable {
    var id: String
    var name: String
    var type: String
    var kcal: Double
    var weight: Double

    public init(id: String, name: String, type: String, kcal: Double, weight: Double) {
        self.id = id
        self.name = name
        self.type = type
        self.kcal = kcal
        self.weight = weight
    }

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case type = "type"
        case kcal = "kcal"
        case weight = "weight"
    }
}

struct FoodResponse: Codable {
    var foods: [Food]

    init(from decoder: Decoder) throws {
        self.foods = try decoder.singleValueContainer().decode([Food].self)
    }
}

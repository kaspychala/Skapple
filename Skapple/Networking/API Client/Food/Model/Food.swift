//
//  Food.swift
//  Skapple
//
//  Created by Kasper Spychala on 07/03/2023.
//

import Foundation

struct Food: Codable {

    var id: Int
    var name: String
    var type: String
    var kcal: Double

    public init(id: Int, name: String, type: String, kcal: Double) {
        self.id = id
        self.name = name
        self.type = type
        self.kcal = kcal
    }

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case type = "type"
        case kcal = "kcal"
    }
}

struct FoodResponse: Codable {
    var foods: [Food]
}

//
//  FoodView.swift
//  Skapple
//
//  Created by Kasper Spychala on 25/08/2023.
//

import SwiftUI

struct FoodView: View {
    var food: Food

    var body: some View {
        HStack(alignment: .center, spacing: 21) {
            Text(food.name)
            Text(String(food.kcal))
            Text(String(food.weight))
            Spacer()
        }
        .frame(maxWidth: .infinity)
        .padding(12)

    }
}

struct FoodView_Previews: PreviewProvider {
    static var previews: some View {
        FoodView(
            food: Food(
                id: "1", name: "Carrot", type: "Vegetable", kcal: 50, weight: 500))
    }
}

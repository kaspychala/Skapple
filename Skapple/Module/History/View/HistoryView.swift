//
//  HistoryView.swift
//  Skapple
//
//  Created by Kasper Spychala on 21/10/2022.
//

import SwiftUI

struct HistoryView: View {
    
    @ObservedObject var viewModel: HistoryViewModel
    @State private var viewDidLoad = false

    var body: some View {
        List {
            ForEach(viewModel.foods, id: \.self) { food in
                FoodView(food: food)
                    .onAppear() {
                        Task {
                            await viewModel.loadMoreFoods(food: food)
                        }
                    }
            }
        }
        .onAppear() {
            if !viewDidLoad {
                viewDidLoad.toggle()
                Task {
                    await viewModel.getFoods()
                }
            }
        }
    }
}

struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryView(viewModel: .init(title: "History"))
    }
}

//
//  ContentView.swift
//  Skapple
//
//  Created by Kasper Spychala on 11/10/2022.
//

import SwiftUI

struct ScaleView: View {
    var duration: Double = 2.0
    @ObservedObject var viewModel: ScaleViewModel
    @ObservedObject var skappleService: SkappleService = .shared

    var body: some View {
        VStack(alignment: .center) {
            ScaleShape(scaleWeight: ScaleWeight(skappleService.weight))
                .stroke(Color.blue, lineWidth: 3)
                .padding(20)
                .animation(.easeInOut(duration: duration))
                .layoutPriority(1)
                .frame(height: 200)
            Spacer()
                .frame(height: 12)
            Text("\(String(format: "%.1f", skappleService.weight))g")
                .font(
                    .system(
                        .largeTitle,
                        design: .rounded
                    )
                    .weight(.bold)
                )
                .onTapGesture {
                    skappleService.connect()
                }
        }
        .navigationBarTitle(viewModel.title).padding(.bottom, 50)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ScaleView(viewModel: .init(title: "Scale"))
    }
}

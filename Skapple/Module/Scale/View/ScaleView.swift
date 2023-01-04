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
                .stroke(Color.white, lineWidth: 3)
                .padding(20)
                .animation(.easeInOut(duration: duration))
                .layoutPriority(1)
                .frame(height: 200)
            Spacer()
                .frame(height: 24)
            Text("CURRENT WEIGHT")
                .font(
                    .system(size: 18)
                    .weight(.light)
                )
            Spacer()
                .frame(height: 6)
            Text("\(String(format: "%.1f", skappleService.weight))g")
                .font(
                    .system(size: 36)
                    .weight(.medium)
                )
                .onTapGesture {
                    skappleService.connect()
                }
            Spacer()
                .frame(height: 12)
            HStack(alignment: .center) {
                VStack(alignment: .leading) {
                    Text("LAST MINIMUM WEIGHT")
                        .font(
                            .system(size: 12)
                            .weight(.light)
                        )
                    Spacer()
                        .frame(height: 6)
                    Text("\(String(format: "%.1f", skappleService.minWeight))g")
                        .font(
                            .system(size: 24)
                            .weight(.light)
                        )
                }
                Spacer()
                VStack(alignment: .leading) {
                    Text("LAST MAXIMUM WEIGHT")
                        .font(
                            .system(size: 12)
                            .weight(.light)
                        )
                    Spacer()
                        .frame(height: 6)
                    Text("\(String(format: "%.1f", skappleService.maxWeight))g")
                        .font(
                            .system(size: 24)
                            .weight(.light)
                        )
                }
            }.padding(24)
        }
        .navigationBarTitle(viewModel.title).padding(.bottom, 50)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ScaleView(viewModel: .init(title: "Scale"))
    }
}

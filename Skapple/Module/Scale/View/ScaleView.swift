//
//  ContentView.swift
//  Skapple
//
//  Created by Kasper Spychala on 11/10/2022.
//

import SwiftUI

struct ScaleView: View {
    @ObservedObject var viewModel: ScaleViewModel

    var body: some View {
        Text(viewModel.title)
            .onTapGesture {
                SkappleService.shared.connect()
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ScaleView(viewModel: .init(title: "Scale"))
    }
}

//
//  ClickerView.swift
//  Skapple
//
//  Created by Kasper Spychala on 24/01/2023.
//

import SwiftUI
import Combine

struct ClickerView: View {

    @ObservedObject var viewModel: ClickerViewModel
    @ObservedObject private var volumeObserver = VolumeObserver()

    var body: some View {
        VStack {
            MPView()
            Text("\(volumeObserver.volume)")
        }
    }
}

struct ClickerView_Previews: PreviewProvider {
    static var previews: some View {
        ClickerView(viewModel: .init(title: "Clicker"))
    }
}

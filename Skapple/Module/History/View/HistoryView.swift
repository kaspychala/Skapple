//
//  HistoryView.swift
//  Skapple
//
//  Created by Kasper Spychala on 21/10/2022.
//

import SwiftUI

struct HistoryView: View {
    
    @ObservedObject var viewModel: HistoryViewModel

    var body: some View {
        Text(viewModel.title)
    }
}

struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryView(viewModel: .init(title: "History"))
    }
}

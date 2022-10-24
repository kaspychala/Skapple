//
//  SettingsView.swift
//  Skapple
//
//  Created by Kasper Spychala on 21/10/2022.
//

import SwiftUI

struct SettingsView: View {

    @ObservedObject var viewModel: SettingsViewModel

    var body: some View {
        Text(viewModel.title)
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView(viewModel: .init(title: "Settings"))
    }
}

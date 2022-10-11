//
//  ContentView.swift
//  Skapple
//
//  Created by Kasper Spychala on 11/10/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .padding()
            .onTapGesture {
                SkappleService.shared.connect()
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

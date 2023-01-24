//
//  MPView.swift
//  Skapple
//
//  Created by Kasper Spychala on 10/01/2023.
//

import Foundation
import SwiftUI
import MediaPlayer

struct MPView: UIViewRepresentable {
    func makeUIView(context: Context) -> MPVolumeView {
        let mpVolumeView = MPVolumeView(frame: .zero)
        mpVolumeView.isUserInteractionEnabled = false
        mpVolumeView.alpha = 0.001
        return mpVolumeView
    }

    func updateUIView(_ view: MPVolumeView, context: Context) {}
}

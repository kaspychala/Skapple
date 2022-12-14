//
//  ScaleShape.swift
//  Skapple
//
//  Created by Kasper Spychala on 06/12/2022.
//

import Foundation
import SwiftUI


struct ScaleShape: Shape {
    
    struct Constants {
        static let maxWeight: Double = 2000.0
    }

    var scaleWeight: ScaleWeight
    var animatableData: ScaleWeight {
        get { scaleWeight }
        set { scaleWeight = newValue }
    }
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let radius = min(rect.size.width / 2.0, rect.size.height)
        let center = CGPoint(x: rect.size.width / 2.0, y: rect.size.height)
        let hypotenuse = Double(radius) * 0.9

        let angle: Angle = .degrees(Double(scaleWeight.weight) / Constants.maxWeight * 180 - 180)
        let needle = CGPoint(x: center.x + CGFloat(cos(angle.radians) * hypotenuse), y: center.y + CGFloat(sin(angle.radians) * hypotenuse))
        path.addArc(center: center, radius: radius, startAngle: .degrees(0), endAngle: .degrees(180), clockwise: true)
        path.move(to: center)
        path.addLine(to: needle)
        path = path.strokedPath(StrokeStyle(lineWidth: 1.0))
        return path
    }
}

struct ScaleWeight {
    var weight: Double

    init( _ w: Double) {
        self.weight = w
    }
}

extension ScaleWeight: VectorArithmetic {
    static func -= (lhs: inout ScaleWeight, rhs: ScaleWeight) {
        lhs = lhs - rhs
    }
    static func - (lhs: ScaleWeight, rhs: ScaleWeight) -> ScaleWeight {
        return ScaleWeight(lhs.weight - rhs.weight)
    }
    static func += (lhs: inout ScaleWeight, rhs: ScaleWeight) {
        lhs = lhs + rhs
    }
    static func + (lhs: ScaleWeight, rhs: ScaleWeight) -> ScaleWeight {
        return ScaleWeight(lhs.weight + rhs.weight)
    }
    mutating func scale(by rhs: Double) {
        weight.scale(by: rhs)
        let sw = ScaleWeight(weight)
        self.weight = sw.weight
    }
    var magnitudeSquared: Double { return weight * weight }
    static var zero: ScaleWeight {
        return ScaleWeight(0)
    }
}

//
//  SkappleService.swift
//  Skapple
//
//  Created by Kasper Spychala on 11/10/2022.
//

import Foundation
import SkaleKit
import CoreBluetooth
import SwiftUI

class SkappleService: NSObject, ObservableObject {

    static let shared = SkappleService()
    var isMinWeightUpdateable  = true
    @Published var weight: Double = 0.0
    @Published var minWeight: Double = 0.0
    @Published var maxWeight: Double = 0.0

    let skale = SKSkale()
    var centralManager: CBCentralManager?

    override init() {
        super.init()
        skale.delegate = self
        centralManager = CBCentralManager(delegate: self, queue: nil)
        connect()
    }

    func connect() {
        skale.isAutoConnectEnabled = true
    }
}

extension SkappleService: CBCentralManagerDelegate {
    func centralManagerDidUpdateState(_ central: CBCentralManager) {
        switch central.state {
        case .unknown:
            break
        case .resetting:
            break
        case .unsupported:
            break
        case .unauthorized:
            break
        case .poweredOff:
            break
        case .poweredOn:
            centralManager?.scanForPeripherals(withServices: nil)
        @unknown default:
            break
        }
    }

    func centralManager(_ central: CBCentralManager, didDiscover peripheral: CBPeripheral, advertisementData: [String : Any], rssi RSSI: NSNumber) {
        //print(peripheral)
    }

}

extension SkappleService: SKSkaleDelegate {
    func skaleDidConnected(_ skale: SKSkale!) {
        print("Connected")
    }

    func skaleDidDisconnected(_ skale: SKSkale!) {
        print("Disconnected")
    }

    func skaleWeightDidUpdate(_ weight: Float32) {
        self.weight = Double(weight)
        if !skaleDidTare() {
            if isMinWeightUpdateable {
                minWeight = 0.0
            }
            if self.weight > minWeight, minWeight <= maxWeight {
                minWeight = self.weight
            }
            if self.weight > maxWeight, maxWeight <= minWeight {
                maxWeight = self.weight
            }
            isMinWeightUpdateable = false
        } else {
            isMinWeightUpdateable = true
        }
    }

    func skaleDidTare() -> Bool {
        return self.weight <= 0.0
    }

    func skale(_ skale: SKSkale!, didErrorOccur error: Error!) {
        //
    }
}

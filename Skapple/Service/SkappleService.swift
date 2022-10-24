//
//  SkappleService.swift
//  Skapple
//
//  Created by Kasper Spychala on 11/10/2022.
//

import Foundation
import SkaleKit
import CoreBluetooth

class SkappleService: NSObject {

    static let shared = SkappleService()
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
        print(weight)
    }

    func skale(_ skale: SKSkale!, didErrorOccur error: Error!) {
        //
    }
}

//
//  APIRouter.swift
//  Skapple
//
//  Created by Kasper Spychala on 07/03/2023.
//

import Foundation

protocol APIRouter {
    var host: String { get }
    var scheme: String { get }
    var path: String { get }
    var method: String { get }
    var parameters: [URLQueryItem] { get }
}

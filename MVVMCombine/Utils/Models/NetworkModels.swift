//
//  NetworkModels.swift
//  MVVMCombine
//
//  Created by Mohamed ElSheikh on 01/04/2023.
//

import Foundation

enum NetworkErrorTypes: Int {
    case noInternet = 0
    case serverError = 1
    case unauthorized = 401
}

struct NetworkError: Error {
    let type: NetworkErrorTypes
    let data: NetworkErrorData?
}

struct NetworkErrorData: Codable {
    var errorDescription: String
    var errorCode: Int
}

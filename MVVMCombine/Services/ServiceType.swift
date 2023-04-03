//
//  ServiceType.swift
//  MVVMCombine
//
//  Created by Mohamed ElSheikh on 31/03/2023.
//

import Alamofire

protocol Endpoints {
    func getMethod() -> HTTPMethod
    func getValue() -> String
}

class ServiceType {
    var networkManager = NetworkManager.shared
    var baseURL: String {
        Bundle.main.object(forInfoDictionaryKey: "base_url") as? String ?? ""
    }
    var apiKey: String {
        Bundle.main.object(forInfoDictionaryKey: "api_key") as? String ?? ""
    }

    func getFullUrl(baseUrl: String,
                    endPoint: String,
                    parameters: [String: String]? = nil) -> String {
        let urlString = "\(baseUrl)\(endPoint)"
        var components = URLComponents()
        components.path = urlString
        components.queryItems = []
        if let params = parameters {
            for key in params.keys {
                components.queryItems?.append(URLQueryItem(name: key, value: params[key]!))
            }
            return (components.url?.absoluteString.removingPercentEncoding?.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? urlString)
        }
        return urlString
    }
}

extension ServiceType {
    func getFullURL(endPoint: Endpoints,
                    parameters: [String: String]? = nil) -> String {
        var params = parameters
        params?["api-key"] = apiKey
        return getFullUrl(baseUrl: baseURL,
                          endPoint: endPoint.getValue(),
                          parameters: params)
    }
}

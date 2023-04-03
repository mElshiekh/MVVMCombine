//
//  NetworkManager.swift
//  MVVMCombine
//
//  Created by Mohamed ElSheikh on 31/03/2023.
//

import Alamofire
import Combine

class NetworkManager {
    static var shared: NetworkManager = NetworkManager()

    private init() {}

    func processReq<T>(url: String,
                       method: HTTPMethod,
                       params: Parameters?,
                       headers: HTTPHeaders? = nil) -> PassthroughSubject<T?, NetworkError> where T: Decodable {
        let observable = PassthroughSubject<T?, NetworkError>()
        AF.request(url,
                   method: method,
                   parameters: params,
                   headers: headers)
            .validate()
            .response { [weak self] response in
                do {
                    let parsed: T? = try self?.handleResponse(response)
                    observable.send(parsed)
                } catch let error {
                    if let error = error as? NetworkError {
                        observable.send(completion: .failure(error))
                    }
                }
            }
        return observable
    }

    private func handleResponse<T>(_ response: AFDataResponse<Data?>) throws -> T? where T: Decodable {
        switch response.result {
        case let .success(data):
            return try parseResponse(data: data)
        case .failure:
            throw handleError(code: response.response?.statusCode ?? 0,
                              data: response.data)
        }
    }

    private func parseResponse<T>(data: Data?) throws -> T? where T: Decodable {
        if let data = data {
            do {
                let response = try JSONDecoder().decode(T.self, from: data)
                return response
            } catch {
                let error = handleError(code: 1, data: data)
                throw error
            }
        }
        return nil
    }

    func handleError(code: Int,
                     data: Data?) -> NetworkError {
        let errorType = NetworkErrorTypes(rawValue: code) ?? .serverError
        if let data = data {
            let errorData = try? JSONDecoder().decode(NetworkErrorData.self, from: data)
            return NetworkError(type: errorType, data: errorData)
        } else {
            return NetworkError(type: errorType, data: nil)
        }
    }
}

//
//  NewsServiceServices.swift
//  MVVMCombine
//
//  Created by Mohamed ElSheikh on 03/04/2023.
//  Copyright (c) 2023. All rights reserved.
//

import Alamofire
import Combine

enum NewsServiceEndpoints: String, Endpoints {
    case news = "svc/mostpopular/v2/viewed/7.json"

    func getMethod() -> HTTPMethod {
        switch self {
        case .news:
            return .get
        }
    }
    
    func getValue() -> String {
        return rawValue
    }
}

class NewsServiceServices: ServiceType, NewsServiceServicesProtocol {
    func getNews() -> PassthroughSubject<NewsResponse?, NetworkError> {
        let endpoint = NewsServiceEndpoints.news
        let url = getFullUrl(baseUrl: baseURL,
                             endPoint: endpoint.rawValue,
                             parameters: ["api-key": apiKey])
        return networkManager.processReq(url: url,
                                         method: endpoint.getMethod(),
                                         params: nil,
                                         headers: nil)
    }
}

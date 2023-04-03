//
//  NewsServiceServicesProtocol.swift
//  MVVMCombine
//
//  Created by Mohamed ElSheikh on 03/04/2023.
//  Copyright (c) 2023. All rights reserved.
//

import Combine

protocol NewsServiceServicesProtocol: ServiceType {
    func getNews() -> PassthroughSubject<NewsResponse?, NetworkError>
}

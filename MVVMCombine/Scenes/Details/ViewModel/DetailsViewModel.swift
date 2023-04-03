//
//  DetailsViewModel.swift
//  MVVMCombine
//
//  Created by Mohamed ElSheikh on 31/03/2023.
//

import UIKit
import Combine

class DetailsViewModel: DetailsViewModelProtocol {
    let newsItemObserver = PassthroughSubject<NewsItem, Never>()
    let loadingObserver = PassthroughSubject<Bool, Never>()
    let networkErrorObserver = PassthroughSubject<String, Never>()
    var service: NewsServiceServicesProtocol?
}

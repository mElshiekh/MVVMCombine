//
//  HomeViewController.swift
//  MVVMCombine
//
//  Created by Mohamed ElSheikh on 31/03/2023.
//  Copyright (c) 2023 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects
//

import Combine
import UIKit

class HomeViewController: BaseViewController, HomeViewControllerProtocol {
    var coordinator: HomeCoordinatorProtocol?
    var viewModel: HomeViewModelProtocol?
    private var cancellables = Set<AnyCancellable>()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        bindData()
        viewModel?.getNews()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }

    deinit {
        AppCoordinator.shared.currentCoordinators.removeAll(where: { $0 == coordinator })
    }
}

private extension HomeViewController {
    func setupUI() {
    }

    func bindData() {
        viewModel?.loadingObserver.sink(receiveValue: { loading in
            print("loading = \(loading)")
        }).store(in: &cancellables)
        viewModel?.newsObserver.sink(receiveValue: { news in
            print(news)
        }).store(in: &cancellables)
    }
}

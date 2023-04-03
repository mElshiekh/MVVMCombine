//
//  HomeCoordinatorModel.swift
//  MVVMCombine
//
//  Created by Mohamed ElSheikh on 31/03/2023.
//  Copyright (c) 2023 ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit
protocol HomeCoordinatorModelProtocol: CoordinatorViewModelType {
}

struct HomeCoordinatorModel: HomeCoordinatorModelProtocol {
    var navigationController: UINavigationController?
}

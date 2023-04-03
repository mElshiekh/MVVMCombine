//
//  DetailsCoordinatorModel.swift
//  MVVMCombine
//
//  Created by Mohamed ElSheikh on 31/03/2023.
//  Copyright (c) 2023 ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit
protocol DetailsCoordinatorModelProtocol: CoordinatorViewModelType {
}

struct DetailsCoordinatorModel: DetailsCoordinatorModelProtocol {
    var navigationController: UINavigationController?
}

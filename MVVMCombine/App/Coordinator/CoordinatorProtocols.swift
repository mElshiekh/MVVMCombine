//
//  CoordinatorProtocols.swift
//  MVVMCombine
//
//  Created by Mohamed ElSheikh on 20/03/2023.
//

import UIKit

protocol CoordinatorViewModelType {
    var navigationController: UINavigationController? { get set }
}

protocol AppCoordinatorProtocol {
    var currentCoordinators: [BaseCoordinator] { get set }
    func start()
}

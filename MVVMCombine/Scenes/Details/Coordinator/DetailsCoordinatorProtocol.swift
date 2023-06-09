//
//  DetailsCoordinatorProtocol.swift
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

protocol DetailsCoordinatorProtocol: BaseCoordinator {
    func start(model: DetailsCoordinatorModelProtocol,
               callBack: PassthroughSubject<DetailsCoordinatorCallback, Never>) -> UIViewController
    
    var controller: DetailsViewControllerProtocol? { get set }
    var navigationController: UINavigationController? { get set }
    var callBack: PassthroughSubject<DetailsCoordinatorCallback, Never>? { get set }
    
}

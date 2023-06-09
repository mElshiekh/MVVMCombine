//
//  HomeCoordinatorProtocol.swift
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

protocol HomeCoordinatorProtocol: BaseCoordinator {
    func start(model: HomeCoordinatorModelProtocol,
               callBack: PassthroughSubject<HomeCoordinatorCallback, Never>) -> UIViewController
    
    var controller: HomeViewControllerProtocol? { get set }
    var navigationController: UINavigationController? { get set }
    var callBack: PassthroughSubject<HomeCoordinatorCallback, Never>? { get set }
    
    func goToDetails()
    
}

//
//  AppCoordinator.swift
//  MVVMCombine
//
//  Created by Mohamed ElSheikh on 20/03/2023.
//

import UIKit
import Combine

class AppCoordinator: AppCoordinatorProtocol {
    static var shared = AppCoordinator()
    var currentCoordinators: [BaseCoordinator] = []
    var window: UIWindow? {
        didSet {
            guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else { return }
            appDelegate.window = window
        }
    }

    func start() {
        let navigationController = UINavigationController()
        let coordinator = HomeCoordinator()
        let callBack = PassthroughSubject<HomeCoordinatorCallback, Never>()
        let controller = coordinator.start(model: HomeCoordinatorModel(navigationController: navigationController),
                                           callBack: callBack)
        navigationController.viewControllers = [controller]
        window = UIWindow()
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
    }
}

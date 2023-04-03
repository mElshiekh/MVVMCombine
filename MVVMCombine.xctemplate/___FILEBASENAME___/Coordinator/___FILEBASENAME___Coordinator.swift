//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___. All rights reserved.
//

import Combine
import UIKit

class ___VARIABLE_sceneName___Coordinator:  BaseCoordinator, ___VARIABLE_sceneName___CoordinatorProtocol {
    weak var controller: ___VARIABLE_sceneName___ViewControllerProtocol?
    var callBack: PassthroughSubject<___VARIABLE_sceneName___CoordinatorCallback, Never>?
    var navigationController: UINavigationController?
    
    func start(model: ___VARIABLE_sceneName___CoordinatorModelProtocol,
                    callBack: PassthroughSubject<___VARIABLE_sceneName___CoordinatorCallback, Never>) -> UIViewController {
        self.callBack = callBack
        navigationController = model.navigationController
        let viewModel = ___VARIABLE_sceneName___ViewModel()
        let controller = ___VARIABLE_sceneName___ViewController.loadFromNib()
        self.controller = controller
        controller.coordinator = self
        controller.viewModel = viewModel
        AppCoordinator.shared.currentCoordinators.append(self)
        return controller
    }
//    private var cancellables = Set<AnyCancellable>()
//
//    func goToScreen() {
//        let coordinator = screenCoordinator()
//        let callBack = PassthroughSubject<ScreenCoordinatorCallback, Never>()
//        callBack.sink(receiveValue: { value in
//                switch value {
//                case .closed:
//                    break
//                }
//        }).store(in: &cancellables)
//        let controller = coordinator.start(model: ScreenCoordinatorModel(navigationController: navigationController),
//                                           callBack: callBack)
//        navigationController?.pushViewController(controller, animated: true)
//    }

    deinit {
        callBack?.send(.closed)
    }
}

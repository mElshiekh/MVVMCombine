//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___. All rights reserved.
//

import Combine
import UIKit

protocol ___VARIABLE_sceneName___CoordinatorProtocol: BaseCoordinator {
    func start(model: ___VARIABLE_sceneName___CoordinatorModelProtocol,
               callBack: PassthroughSubject<___VARIABLE_sceneName___CoordinatorCallback, Never>) -> UIViewController
    
    var controller: ___VARIABLE_sceneName___ViewControllerProtocol? { get set }
    var navigationController: UINavigationController? { get set }
    var callBack: PassthroughSubject<___VARIABLE_sceneName___CoordinatorCallback, Never>? { get set }
    
}

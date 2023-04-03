//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___. All rights reserved.
//

import Combine
import UIKit

class ___VARIABLE_sceneName___ViewController: BaseViewController, ___VARIABLE_sceneName___ViewControllerProtocol {
    var coordinator: ___VARIABLE_sceneName___CoordinatorProtocol?
    var viewModel: ___VARIABLE_sceneName___ViewModelProtocol?
    private var cancellables = Set<AnyCancellable>()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        bindData()
    }

    deinit {
        AppCoordinator.shared.currentCoordinators.removeAll(where: { $0 == coordinator })
    }
}

private extension ___VARIABLE_sceneName___ViewController {
    func setupUI() {
    }

    func bindData() {
    }
}

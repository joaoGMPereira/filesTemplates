//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___. All rights reserved.
//

import Foundation
import Moya

protocol ___VARIABLE_sceneName___CoordinatorProtocol: class {
    func todo()
}

class ___VARIABLE_sceneName___Coordinator: Coordinator {
    var childCoordinators: [Coordinator] = []
    var navigationController: BaseNavigationController
    let viewController: ___VARIABLE_sceneName___ViewController
    
    init(with navigation: BaseNavigationController) {
        self.navigationController = navigation
        let provider = MoyaProvider<___VARIABLE_sceneName___Route>()
        let service = ___VARIABLE_sceneName___Service(provider: provider)
        let viewModel = ___VARIABLE_sceneName___ViewModel(service: service)
        self.viewController = ___VARIABLE_sceneName___ViewController(with: viewModel)
        self.viewController.delegate = self
    }
    
    func start(presentation: Presentation) {
        
        switch presentation {
            
        case .present(let animated):
            self.navigationController.present(viewController, animated: animated, completion: nil)
        case .push(let animated):
            self.navigationController.pushViewController(viewController, animated: animated)
        case .deeplink(let path):
            self.handleDeepLink(with: path)
        }
    }
    
    func start(with presentation: Presentation) -> BaseViewController {
        
        self.start(presentation: presentation)
        
        return self.viewController
    }
    
    func handleDeepLink(with path: String) {
        
    }
    
}

extension ___VARIABLE_sceneName___Coordinator: ___VARIABLE_sceneName___CoordinatorProtocol {
    func todo() {
        
    }
}



//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___. All rights reserved.
//

import UIKit

protocol ___VARIABLE_sceneName___ViewModelContract {
    
    func fetch(completion: @escaping (_ weather: ___VARIABLE_sceneName___ViewData?, _ error: Error?) -> Void)
    
}

class ___VARIABLE_sceneName___ViewModel: ___VARIABLE_sceneName___ViewModelContract {
    
    let service: ___VARIABLE_sceneName___ServiceContract
    
    init(service: ___VARIABLE_sceneName___ServiceContract) {
        self.service = service
    }
    
    func fetch(completion: @escaping (_ weather: ___VARIABLE_sceneName___ViewData?, _ error: Error?) -> Void ) {
        
        self.service.fetch(todoString: "todo", todoDouble: 0.0) { (model, error) in
            
            if let model = model {
                let viewData = ___VARIABLE_sceneName___ViewData(entity: model)
                completion(viewData, nil)
            } else {
                completion(nil, error)
            }
        }
    }
}


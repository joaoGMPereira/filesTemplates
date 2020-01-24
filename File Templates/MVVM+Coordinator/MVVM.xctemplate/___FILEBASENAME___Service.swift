//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___. All rights reserved.
//

import Foundation
import Moya

protocol ___VARIABLE_sceneName___ServiceContract {
    
    var provider: MoyaProvider<___VARIABLE_sceneName___Route> { get set }
    func fetch(todoString: String, todoDouble: Double, completion: @escaping (_ weather: ___VARIABLE_sceneName___Model?, _ error: Error?) -> Void)
}

class ___VARIABLE_sceneName___Service: ___VARIABLE_sceneName___ServiceContract {
    
    var provider: MoyaProvider<___VARIABLE_sceneName___Route>
    
    init(provider: MoyaProvider<___VARIABLE_sceneName___Route>) {
        self.provider = provider
    }
    
    func fetch(todoString: String, todoDouble: Double, completion: @escaping (_ weather: ___VARIABLE_sceneName___Model?, _ error: Error?) -> Void) {
        
        provider.request(.todo(todoString: todoString, todoDouble: todoDouble)) { (result) in
            
            switch result {
                
            case let .success(moyaResponse):
                let result = try? moyaResponse.map(___VARIABLE_sceneName___Model.self, atKeyPath: nil, using: JSONDecoder())
                completion(result, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }
}

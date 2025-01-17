//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ Globile. All rights reserved.
//

import Foundation

typealias ___VARIABLE_sceneName___Success = ((_ response: String) -> Void)
typealias ___VARIABLE_sceneName___Error = ((_ errorMessage: String) -> Void)

protocol ___VARIABLE_sceneName___INVSSimulatorWorkerProtocol {
    
    func getSomething(success: @escaping ___VARIABLE_sceneName___Success, failure: @escaping ___VARIABLE_sceneName___Error)
}

class ___VARIABLE_sceneName___Worker: NSObject, ___VARIABLE_sceneName___INVSSimulatorWorkerProtocol {
    
    func getSomething(success: @escaping ___VARIABLE_sceneName___Success, failure: @escaping ___VARIABLE_sceneName___Error) {
        
    }
    
}

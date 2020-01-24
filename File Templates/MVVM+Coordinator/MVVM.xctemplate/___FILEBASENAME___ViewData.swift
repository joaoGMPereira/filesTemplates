//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___. All rights reserved.
//
import UIKit

protocol ___VARIABLE_sceneName___ViewDataContract {}

class ___VARIABLE_sceneName___ViewData: ___VARIABLE_sceneName___ViewDataContract {
    
    private let entity: ___VARIABLE_sceneName___Model
    
    var todo: String {
        guard let todo = entity.todo
            else {
                return ""
        }
        return String(todo)
    }
    
    init(entity: ___VARIABLE_sceneName___Model) {
        self.entity = entity
    }
    
}

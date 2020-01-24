//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___. All rights reserved.
//

import Foundation
import Moya

enum ___VARIABLE_sceneName___Route {
    
    case todo(todoString: String, todoDouble: Double)
}

extension ___VARIABLE_sceneName___Route : TargetType {
    
    var path : String {
        return "/todo"
    }
    
    var method: Moya.Method{
        return .get
    }
    
    var task: Task {
        switch self{
        case .todo(todoString: let todoString, todoDouble: let todoDouble):
            let params = ["v" : todoString, "todoDouble" : todoDouble, "appid" : "todo"] as [String : Any]
            return .requestParameters(parameters: params, encoding: URLEncoding.queryString)
        }
    }
}

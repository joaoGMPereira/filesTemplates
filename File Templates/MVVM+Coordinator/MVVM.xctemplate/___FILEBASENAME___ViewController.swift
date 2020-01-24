//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___. All rights reserved.
//

import UIKit

class ___VARIABLE_sceneName___ViewController: BaseViewController {
    
    var viewModel: ___VARIABLE_sceneName___ViewModelContract!
    weak var delegate: ___VARIABLE_sceneName___CoordinatorProtocol?
    init(with viewModel: ___VARIABLE_sceneName___ViewModelContract) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
}

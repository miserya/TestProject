//
//  LoginAssembler.swift
//  TestProject
//
//  Created by Maria Holubieva on 12.02.2020.
//  Copyright © 2020 Maria Holubieva. All rights reserved.
//

import UIKit
import DomanLayer

class LoginAssembler {
    
    static func module() -> (LoginViewModelOuput, UIViewController) {
        let viewModel: (LoginViewModelImpl&LoginViewModel&LoginViewModelOuput) = LoginViewModelImpl()
        viewModel.login = DomainLayerAssembler.shared.login

        let viewController = UIStoryboard(name: "Main", bundle: Bundle.main)
            .instantiateViewController(identifier: "LoginViewController") { (coder: NSCoder) -> UIViewController? in
                return LoginViewController(coder: coder, viewModel: viewModel) }
        
        return (viewModel, viewController)
    }
}

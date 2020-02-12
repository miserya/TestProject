//
//  LoginViewModel.swift
//  TestProject
//
//  Created by Maria Holubieva on 07.02.2020.
//  Copyright © 2020 Maria Holubieva. All rights reserved.
//

import Foundation
import DomanLayer

protocol LoginViewModelOuput: class {
    var onShowLogout: (() -> Void)? { get set }
}

protocol LoginViewModel {
    func performLogin()
}

class LoginViewModelImpl: LoginViewModel, LoginViewModelOuput {

    var login: Login!

    var onShowLogout: (() -> Void)?

    func performLogin() {
        login.performRequest { [weak self] (success: Bool) in
            self?.onShowLogout?()
        }
    }
}

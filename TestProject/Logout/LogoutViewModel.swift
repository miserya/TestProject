//
//  LogoutViewModel.swift
//  CleanseSample
//
//  Created by Maria Holubieva on 07.02.2020.
//  Copyright © 2020 Maria Holubieva. All rights reserved.
//

import Foundation
import DomanLayer

protocol LogoutViewModelOutput: class {
    var onShowLogin: (() -> Void)? { get set }
    var onShowNext: (() -> Void)? { get set }
}

protocol LogoutViewModel {
    func performRequest()
    func showNext()
    func performLogout()
}

class LogoutViewModelImpl: LogoutViewModel, LogoutViewModelOutput {

    var request: Request!
    var logout: Logout!

    var onShowLogin: (() -> Void)?
    var onShowNext: (() -> Void)?

    func performRequest() {
        request.performRequest { (success: Bool) in
            debugPrint("Succesfful performRequest completion.")
        }
    }

    func performLogout() {
        logout.performRequest { [weak self] (_: Bool) in
            self?.onShowLogin?()
        }
    }

    func showNext() {
        onShowNext?()
    }
}

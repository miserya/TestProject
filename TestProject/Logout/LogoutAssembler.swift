//
//  LogoutAssembler.swift
//  TestProject
//
//  Created by Maria Holubieva on 12.02.2020.
//  Copyright © 2020 Maria Holubieva. All rights reserved.
//

import UIKit
import DomanLayer

class LogoutAssembler {

    static func module() -> (LogoutViewModelOutput, UIViewController) {
        let viewModel: (LogoutViewModelImpl&LogoutViewModel&LogoutViewModelOutput) = LogoutViewModelImpl()
        viewModel.request = DomainLayerAssembler.shared.request
        viewModel.logout = DomainLayerAssembler.shared.logout

        let viewController = UIStoryboard(name: "Main", bundle: Bundle.main).instantiateViewController(identifier: "LogoutViewController")
        (viewController as? LogoutViewController)?.viewModel = viewModel

        return (viewModel, viewController)
    }
}

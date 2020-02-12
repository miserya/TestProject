//
//  Coordinator.swift
//  TestProject
//
//  Created by Maria Holubieva on 12.02.2020.
//  Copyright © 2020 Maria Holubieva. All rights reserved.
//

import UIKit

class Coordinator {

    private var navigationController: UINavigationController?

    func start(in window: UIWindow) {
        showLogin(in: window)
    }

    func showLogin(in window: UIWindow) {
        let (module, view) = LoginAssembler.module()
        module.onShowLogout = { [weak self] in
            self?.showLogout()
        }

        navigationController = UINavigationController(rootViewController: view)
        window.rootViewController = navigationController
    }

    func showLogout() {
        let (module, view) = LogoutAssembler.module()
        module.onShowLogin = { [weak self] in
            self?.navigationController?.popToRootViewController(animated: true)
        }
        module.onShowNext = { [weak self] in
            self?.showLogout()
        }

        navigationController?.pushViewController(view, animated: true)
    }
}

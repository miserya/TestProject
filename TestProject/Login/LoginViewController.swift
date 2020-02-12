//
//  LoginViewController.swift
//  CleanseSample
//
//  Created by Maria Holubieva on 07.02.2020.
//  Copyright © 2020 Maria Holubieva. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    var viewModel: LoginViewModel!

    @IBOutlet private weak var btnLogin: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func onLogin(_ sender: Any) {
        viewModel.performLogin()
    }
}

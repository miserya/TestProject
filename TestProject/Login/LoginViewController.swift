//
//  LoginViewController.swift
//  CleanseSample
//
//  Created by Maria Holubieva on 07.02.2020.
//  Copyright © 2020 Maria Holubieva. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    private let viewModel: LoginViewModel!

    @IBOutlet private weak var btnLogin: UIButton!

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    init?(coder: NSCoder, viewModel: LoginViewModel) {
        self.viewModel = viewModel
        super.init(coder: coder)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func onLogin(_ sender: Any) {
        viewModel.performLogin()
    }
}

//
//  LogoutViewController.swift
//  CleanseSample
//
//  Created by Maria Holubieva on 07.02.2020.
//  Copyright © 2020 Maria Holubieva. All rights reserved.
//

import UIKit

class LogoutViewController: UIViewController {

    var viewModel: LogoutViewModel!

    @IBOutlet private weak var btnPerformRequest: UIButton!
    @IBOutlet private weak var btnShowNext: UIButton!
    @IBOutlet private weak var btnLogout: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func onPerformRequest(_ sender: Any) {
        viewModel.performRequest()
    }

    @IBAction func onShowNext(_ sender: Any) {
        viewModel.showNext()
    }

    @IBAction func onLogout(_ sender: Any) {
        viewModel.performLogout()
    }

}

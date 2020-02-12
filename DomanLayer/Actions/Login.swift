//
//  Login.swift
//  DomanLayer
//
//  Created by Maria Holubieva on 07.02.2020.
//  Copyright © 2020 Maria Holubieva. All rights reserved.
//

import Foundation

public final class Login {
    var service: LoginService!
    
    public func performRequest(_ completion: ((Bool) -> Void)?) {
        service.login(completion)
    }
}

class LoginService {

    func login(_ completion: ((Bool) -> Void)?) {
        completion?(true)
    }

    func logout(_ completion: ((Bool) -> Void)?) {
        completion?(true)
    }
}

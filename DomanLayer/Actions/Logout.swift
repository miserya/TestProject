//
//  Logout.swift
//  DomanLayer
//
//  Created by Maria Holubieva on 07.02.2020.
//  Copyright © 2020 Maria Holubieva. All rights reserved.
//

import Foundation

public final class Logout {
    var service: LoginService!
    
    public func performRequest(_ completion: ((Bool) -> Void)?) {
        service.logout(completion)
    }
}

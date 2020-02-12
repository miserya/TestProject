//
//  DomainLayerAssembler.swift
//  DomanLayer
//
//  Created by Maria Holubieva on 12.02.2020.
//  Copyright © 2020 Maria Holubieva. All rights reserved.
//

import Foundation

public final class DomainLayerAssembler {

    public static var shared = DomainLayerAssembler()

    public lazy var request: Request = {
        let value = Request()
        value.service = self.requestService
        return value
    }()

    public lazy var login: Login = {
        let value = Login()
        value.service = self.loginService
        return value
    }()

    public lazy var logout: Logout = {
        let value = Logout()
        value.service = self.loginService
        return value
    }()

    lazy var requestService = RequestService()
    lazy var loginService = LoginService()
}

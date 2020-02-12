//
//  Request.swift
//  DomanLayer
//
//  Created by Maria Holubieva on 07.02.2020.
//  Copyright © 2020 Maria Holubieva. All rights reserved.
//

import Foundation

public final class Request {
    var service: RequestService!

    public func performRequest(_ completion: ((Bool) -> Void)?) {
        service.performRequest(completion)
    }
}

class RequestService {

    func performRequest(_ completion: ((Bool) -> Void)?) {
        completion?(true)
    }
}

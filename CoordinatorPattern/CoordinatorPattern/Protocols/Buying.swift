//
//  Buying.swift
//  CoordinatorPattern
//
//  Created by Thomas Kellough on 6/27/20.
//  Copyright © 2020 Brandt Information Services. All rights reserved.
//

import Foundation

protocol Buying: AnyObject {
    func buySubscription()
}

protocol AccountCreating: AnyObject {
    func createAccount()
}

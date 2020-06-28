//
//  Buying.swift
//  CoordinatorPattern
//
//  Created by Thomas Kellough on 6/27/20.
//  Copyright © 2020 . All rights reserved.
//

import Foundation

protocol Buying: AnyObject {
    func buySubscription()
}

protocol AccountCreating: AnyObject {
    func createAccount()
}

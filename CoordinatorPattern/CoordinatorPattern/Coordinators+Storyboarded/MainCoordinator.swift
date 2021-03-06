//
//  MainCoordinator.swift
//  CoordinatorPattern
//
//  Created by Thomas Kellough on 6/24/20.
//  Copyright © 2020 . All rights reserved.
//

import Foundation
import UIKit

class MainCoordinator: Coordinator, Buying, AccountCreating {
    var navigationController: UINavigationController
    var children = [Coordinator]()
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = ViewController.instantiate()
        navigationController.pushViewController(vc, animated: true)
//        vc.coordinator = self
        vc.buyAction = { [weak self] in
            self?.buySubscription()
        }
        vc.createAccountAction = { [weak self] in
            self?.createAccount()
        }
    }
    
    func buySubscription() {
        let vc = BuyViewController.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    
    func createAccount() {
        let vc = CreateAccountViewController.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
}


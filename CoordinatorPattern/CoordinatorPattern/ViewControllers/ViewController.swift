//
//  ViewController.swift
//  CoordinatorPattern
//
//  Created by Thomas Kellough on 6/24/20.
//  Copyright © 2020 . All rights reserved.
//

import UIKit

class ViewController: UIViewController, Storyboarded {
    
    weak var coordinator: (Buying & AccountCreating)?
    
    var buyAction: (() -> Void)?
    var createAccountAction: (() -> Void)?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        title = "Main VC"
        navigationController?.navigationBar.prefersLargeTitles = true
    }

    @IBAction func buyTapped(sender: UIButton) {
//        coordinator?.buySubscription()
        // using closures instead
        buyAction?()
    }
    
    @IBAction func createAccountTapped(sender: UIButton) {
//        coordinator?.createAccount()
        // using closures instead
        createAccountAction?()
    }

}


//
//  ViewController.swift
//  CoordinatorPattern
//
//  Created by Thomas Kellough on 6/24/20.
//  Copyright © 2020 Brandt Information Services. All rights reserved.
//

import UIKit

class ViewController: UIViewController, Storyboarded {
    
    weak var coordinator: (Buying & AccountCreating)?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        title = "Main VC"
        navigationController?.navigationBar.prefersLargeTitles = true
    }

    @IBAction func buyTapped(sender: UIButton) {
        coordinator?.buySubscription()
    }
    
    @IBAction func createAccountTapped(sender: UIButton) {
        coordinator?.createAccount()
    }

}


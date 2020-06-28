//
//  ViewController.swift
//  CoordinatorPattern
//
//  Created by Thomas Kellough on 6/24/20.
//  Copyright © 2020 Brandt Information Services. All rights reserved.
//

import UIKit

class ViewController: UIViewController, Storyboarded {
    
    weak var coordinator: MainCoordinator?

    @IBOutlet var selectedProduct: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        title = "Main VC"
        navigationController?.navigationBar.prefersLargeTitles = true
    }

    @IBAction func buyTapped(sender: UIButton) {
        coordinator?.buySubsriptions(to: selectedProduct.selectedSegmentIndex)
    }
    
    @IBAction func createAccountTapped(sender: UIButton) {
        coordinator?.createAccount()
    }

}


//
//  BuyViewController.swift
//  CoordinatorPattern
//
//  Created by Thomas Kellough on 6/24/20.
//  Copyright © 2020 Brandt Information Services. All rights reserved.
//

import UIKit

class BuyViewController: UIViewController, Storyboarded {

    weak var coordinator: MainCoordinator?
    
    var selectedProduct = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}

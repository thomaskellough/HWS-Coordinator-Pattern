//
//  MainTabBarController.swift
//  CoordinatorPattern
//
//  Created by Thomas Kellough on 6/27/20.
//  Copyright © 2020 "". All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {

    let mainCoordinator = MainCoordinator(navigationController: UINavigationController())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainCoordinator.start()
        viewControllers = [mainCoordinator.navigationController]
    }

}

//
//  Coordinator.swift
//  CoordinatorPattern
//
//  Created by Thomas Kellough on 6/24/20.
//  Copyright © 2020 . All rights reserved.
//

import Foundation
import UIKit

protocol Coordinator {
    var navigationController: UINavigationController { get set }
    var children: [Coordinator] { get set }
    func start()
}

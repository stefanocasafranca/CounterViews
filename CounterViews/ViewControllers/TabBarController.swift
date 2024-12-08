//
//  TabBarController.swift
//  CounterViews
//
//  Created by Stefano Casafranca on 12/8/24.
//

import Foundation
import UIKit

class TabBarController: UITabBarController {
    let counterModel = CounterModel(count: 3) // 3 categories for counters

    override func viewDidLoad() {
        super.viewDidLoad()

        // Assign CounterModel to all child controllers
        if let viewControllers = self.viewControllers {
            for (index, vc) in viewControllers.enumerated() {
                if let counterVC = vc as? BaseCounterViewController {
                    counterVC.counterModel = counterModel
                    counterVC.categoryIndex = index
                } else if let mainVC = vc as? ViewController {
                    mainVC.counterModel = counterModel
                }
            }
        }
    }
}


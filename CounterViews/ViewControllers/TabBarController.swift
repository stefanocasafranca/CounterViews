//
//  TabBarController.swift
//  CounterViews
//
//  Created by Stefano Casafranca on 12/8/24.
//

import UIKit

class TabBarController: UITabBarController {
    let counterModel = CounterModel(count: 3) // Create shared CounterModel

    override func viewDidLoad() {
        super.viewDidLoad()

        // Pass CounterModel to all child view controllers
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



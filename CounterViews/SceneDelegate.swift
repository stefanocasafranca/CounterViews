//
//  SceneDelegate.swift
//  CounterViews
//
//  Created by Stefano Casafranca on 12/5/24.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?

    func scene(_ scene: UIScene, didFinishLaunchingWithOptions options: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        if let tabBarController = window?.rootViewController as? UITabBarController {
            let counterModel = CounterModel() // Create a shared CounterModel

            // Loop through each view controller in the tab bar
            if let viewControllers = tabBarController.viewControllers {
                for (index, vc) in viewControllers.enumerated() {
                    // Check for specific view controllers and set the model + index
                    if let view1VC = vc as? View1Controller, index == 0 {
                        view1VC.counterModel = counterModel
                        view1VC.categoryIndex = 0
                    } else if let view2VC = vc as? View2Controller, index == 1 {
                        view2VC.counterModel = counterModel
                        view2VC.categoryIndex = 1
                    } else if let view3VC = vc as? View3Controller, index == 2 {
                        view3VC.counterModel = counterModel
                        view3VC.categoryIndex = 2
                    }
                }
            }
        }
        return true
    }
}


    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
    }
    
    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
    }
    
    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
    }
    
    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
    }
    
    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
    }


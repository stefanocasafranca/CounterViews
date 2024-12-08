//
//  BaseCounterViewController.swift
//  CounterViews
//
//  Created by Stefano Casafranca on 12/8/24.
//

import Foundation
import UIKit

class BaseCounterViewController: UIViewController {
    var counterModel: CounterModel!
    var categoryIndex: Int!

    @IBAction func incrementCounter(_ sender: UIButton) {
        guard let counterModel = counterModel, let categoryIndex = categoryIndex else {
            print("Error: CounterModel or CategoryIndex is nil!")
            return
        }

        counterModel.incrementCounter(at: categoryIndex)
        print("Counter updated: \(counterModel.counters)")
    }
}

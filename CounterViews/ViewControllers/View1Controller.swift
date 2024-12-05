//
//  View1Controller.swift
//  CounterViews
//
//  Created by Stefano Casafranca on 12/5/24.
//

import UIKit

class View1Controller: UIViewController {
    var counterModel: CounterModel! // Shared CounterModel instance
    var categoryIndex: Int! // Index for this tab (e.g., 0 for View1Controller)

    @IBAction func button1Pressed(_ sender: UIButton) {
        guard let counterModel = counterModel else {
            print("Error: counterModel is nil!")
            return
        }

        if categoryIndex >= 0 && categoryIndex < counterModel.counters.count {
            counterModel.counters[categoryIndex] += 1
            print("Counter updated: \(counterModel.counters)")
        } else {
            print("Error: categoryIndex out of bounds!")
        }
    }
}

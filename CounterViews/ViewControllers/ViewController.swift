//
//  ViewController.swift
//  CounterViews
//
//  Created by Stefano Casafranca on 12/5/24.
//

import UIKit

class ViewController: UIViewController {
    var counterModel: CounterModel! // Shared CounterModel instance
    
    @IBOutlet weak var category1Label: UILabel!
    @IBOutlet weak var category2Label: UILabel!
    @IBOutlet weak var category3Label: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        updateLabels()
    }

    func updateLabels() {
        guard let counterModel = counterModel else {
            print("Error: counterModel is nil!")
            return
        }

        category1Label.text = "Category 1: \(counterModel.counters[0])"
        category2Label.text = "Category 2: \(counterModel.counters[1])"
        category3Label.text = "Category 3: \(counterModel.counters[2])"
    }
}

  
   

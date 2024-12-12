//
//  ViewController.swift
//  CounterViews
//
//  Created by Stefano Casafranca on 12/5/24.
//

import UIKit

class ViewController: UIViewController {
    var counterModel: CounterModel!
    
    @IBOutlet weak var category1Label: UILabel!
    @IBOutlet weak var category2Label: UILabel!
    @IBOutlet weak var category3Label: UILabel!
    
    override func    viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .systemTeal
        updateLabels()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.view.backgroundColor = .yellow
        updateLabels()
    }
    
    @IBAction func updateCountsFrom(views: UIStoryboardSegue) {
        updateLabels()
    }
    
    func updateLabels() {
        guard let counterModel = counterModel else {
            print("Error: CounterModel is nil!")
            return
        }
        
        // Access specific counter values by index
        category1Label.text = "Category 1: \(counterModel.counters[0])"
        category2Label.text = "Category 2: \(counterModel.counters[1])"
        category3Label.text = "Category 3: \(counterModel.counters[2])"
    }
    
    // 🟩 Handle navigation using segues
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? BaseCounterViewController {
            if segue.identifier == "toView1" {
                destination.counterModel = counterModel
                destination.categoryIndex = 0
            } else if segue.identifier == "toView2" {
                destination.counterModel = counterModel
                destination.categoryIndex = 1
            } else if segue.identifier == "toView3" {
                destination.counterModel = counterModel
                destination.categoryIndex = 2
            }
        }
    }
}

  




    

  
   

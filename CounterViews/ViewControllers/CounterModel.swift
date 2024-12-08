//
//  CounterModel.swift
//  CounterViews
//
//  Created by Stefano Casafranca on 12/5/24.
//

import Foundation
import UIKit

class CounterModel {
    var counters: [Int]

    init(count: Int) {
        self.counters = Array(repeating: 0, count: count)
    }

    func incrementCounter(at index: Int) {
        guard index >= 0 && index < counters.count else { return }
        counters[index] += 1
    }
}

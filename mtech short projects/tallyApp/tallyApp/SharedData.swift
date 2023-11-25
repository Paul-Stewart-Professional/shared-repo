//
//  sharedData.swift
//  tallyApp
//
//  Created by Paul Stewart on 9/30/23.
//

import Foundation

class Counter {
    static let shared = Counter()

    var countBy = 1
    var tally = 0
    
    private init() {}
    
    func increase() {
        tally += countBy
    }
}

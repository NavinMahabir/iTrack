//
//  Counter.swift
//  iTrack
//
//  Created by Navin Mahabir on 2016-10-08.
//  Copyright © 2016 Navin Mahabir. All rights reserved.
//

import UIKit

class Counter {
    // MARK: Properties
    
    var name: String
    var counts: [Count]
    var total: Int
    var lastUpdate: Date
    
    // MARK: Initialization
    
    init(name:String) {
        if (name.isEmpty){
            self.name = "Counter"
        }
        else{
            self.name = name
        }
        counts = [Count]()
        total = 0
        lastUpdate = Date()
    }
    
    // MARK: Functions
    
    func incrementCounter(){
        let newCount = Count()
        lastUpdate = newCount.date
        counts.append(newCount)
        total += 1
    }
    
    func decrementCounter() {
        counts.removeLast()
        total -= 1
        lastUpdate = counts[counts.count].date
    }
    
    func renameCounter(newName:String) {
        if (!name.isEmpty){
            self.name = newName
        }
    }
}

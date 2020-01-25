//
//  CoffeeMAchine.swift
//  NewCoffeeMachine
//
//  Created by Ира Линник on 22.01.2020.
//  Copyright © 2020 Ира Линник. All rights reserved.
//

import UIKit

class CoffeeMachine {
    var description: String {
        return "Coffee machine specifications:" + "\n" + "Coffee machine is automatic: \(isAutomatic)" + "\n" + "Coffee machine case material: \(materialOfCase)"
    }
    let isAutomatic: Bool
    var materialOfCase: String
    var coffee: Int
    var largeCups: Int = 0
    var smallCups: Int = 0
    var mediumCups: Int = 0
    var milk: Int = 0
    var cream: Int = 0
    init (isAutomatic: Bool, materialOfCase: String, coffee: Int) {
        self.isAutomatic = isAutomatic
        self.materialOfCase = materialOfCase
        self.coffee = coffee
    }
    
    func addCoffee() {
        coffee += 5
    }
}

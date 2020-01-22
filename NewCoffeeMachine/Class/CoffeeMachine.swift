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
        return "Hello, I'm your new coffee machine =) Woulde you like some coffee?" + "\n" + "Coffee machine specifications:" + "\n" + "Coffee machine is automatic: \(isAutomatic)" + "\n" + "Coffee machine case material: \(materialOfCase)"
    }
    let isAutomatic: Bool
    var materialOfCase: String
    var sugar: Int = 0
    var coffee: Int = 0
    var largeCups: Int = 0
    var smallCups: Int = 0
    var mediumCups: Int = 0
    var milk: Int = 0
    var cream: Int = 0
    init (isAutomatic: Bool, materialOfCase: String) {
        self.isAutomatic = isAutomatic
        self.materialOfCase = materialOfCase
    }
}

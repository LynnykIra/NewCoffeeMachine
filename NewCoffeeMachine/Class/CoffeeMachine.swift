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
    
    func addCoffee() {
        coffee += 50
    }
    
    func addMilk() {
        milk += 50
    }
    
    func addCream() {
        cream += 50
    }

    func addLargeCups() {
    largeCups += 50
    }
    
    func addMediumCups() {
        mediumCups += 50
    }
    
    func addSmallCups() {
        smallCups += 50
    }
    
    func checkResourses() -> String {
        if coffee <= 0 {
         return "Please add coffee"
        } else if largeCups <= 0 {
            return "Please add large Cups"
        } else if mediumCups <= 0 {
            return "Please add mediumCups"
        } else if smallCups <= 0 {
            return "Plese add smallCups"
        } else if milk <= 0 {
            return "Please add milk"
        } else if cream <= 0 {
            return "Plese add cream"
        } else {
            return "Coffee machine is ready"
        }
    }
}

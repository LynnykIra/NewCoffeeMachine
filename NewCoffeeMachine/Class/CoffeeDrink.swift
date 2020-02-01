//
//  CoffeeDrinks.swift
//  NewCoffeeMachine
//
//  Created by Ира Линник on 22.01.2020.
//  Copyright © 2020 Ира Линник. All rights reserved.
//

import UIKit

class CoffeDrink {
    var description: String {
        return "Here is your drink, enjoy =)"
    }
    var coffee: Int
    var milk: Int
    var cream: Int
    var smallCupsUsed: Int
    var mediumCupsUsed: Int
    var largeCupsUsed: Int
    init (coffee: Int, milk: Int, cream: Int, smallCupsUsed: Int, mediumCupsUsed: Int, largeCupsUsed: Int) {
        self.coffee = coffee
        self.milk = milk
        self.cream = cream
        self.smallCupsUsed = smallCupsUsed
        self.mediumCupsUsed = mediumCupsUsed
        self.largeCupsUsed = largeCupsUsed
    }
    
}

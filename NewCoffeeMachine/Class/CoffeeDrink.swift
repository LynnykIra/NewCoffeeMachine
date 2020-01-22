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
    var milk: Int?
    var cream: Int?
    init (coffee: Int) {
        self.coffee = coffee
    }
}

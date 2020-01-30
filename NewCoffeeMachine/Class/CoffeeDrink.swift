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
    let automaticCoffeMachine = CoffeeMachine.init(isAutomatic: true, materialOfCase: "metal")
    
    func makeEspresso() {
        automaticCoffeMachine.takeAwayCoffee()
        automaticCoffeMachine.takeAwaySmallCup()
    }
    
    func makeDopio() {
        automaticCoffeMachine.takeAwayCoffee()
        automaticCoffeMachine.takeAwayCoffee()
        automaticCoffeMachine.takeAwayMediumCup()
    }
    
    func makeCuppuchino() {
        automaticCoffeMachine.takeAwayCoffee()
        for _ in 0..<3 { automaticCoffeMachine.takeAwayMilk()
        }
        automaticCoffeMachine.takeAwayLargeCup()
    }
    
    func makeVienneseCoffee() {
        automaticCoffeMachine.takeAwayCoffee()
        automaticCoffeMachine.takeAwayCream()
        automaticCoffeMachine.takeAwayCream()
        automaticCoffeMachine.takeAwayMediumCup()
    }
    
    func makelatteMacchiato() {
        automaticCoffeMachine.takeAwayCoffee()
        automaticCoffeMachine.takeAwayMilk()
        automaticCoffeMachine.takeAwayMilk()
        automaticCoffeMachine.takeAwayCream()
        automaticCoffeMachine.takeAwayLargeCup()
    }
    
}

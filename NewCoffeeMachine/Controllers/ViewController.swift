//
//  ViewController.swift
//  NewCoffeeMachine
//
//  Created by Ира Линник on 22.01.2020.
//  Copyright © 2020 Ира Линник. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var backgroundMainStoryboard: UIImageView!
    @IBOutlet weak var welcomeLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        addBackgroundImage()
        
    }
    let automaticCoffeeMachine = CoffeeMachine.init(isAutomatic: true, materialOfCase: "metal")
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let serviceVc = segue.destination as? ServiceViewController {
            serviceVc.automaticCoffeeMachine = automaticCoffeeMachine
        }
    }
    
    
    func addBackgroundImage() {
        backgroundMainStoryboard.image = UIImage (named: "coffee")
    }
    
    @IBAction func makeLatteMacchiatoButton(_ sender: UIButton) {
        let latteMacchiato = CoffeDrink.init(coffee: 10, milk: 20, cream: 10, smallCupsUsed: 0, mediumCupsUsed: 0, largeCupsUsed: 1)
        welcomeLabel.text = automaticCoffeeMachine.checkResourses()
        if welcomeLabel.text == "Coffee machine is ready" {
            automaticCoffeeMachine.coffee -= latteMacchiato.coffee
            automaticCoffeeMachine.milk -= latteMacchiato.milk
            automaticCoffeeMachine.cream -= latteMacchiato.cream
            automaticCoffeeMachine.largeCups -= latteMacchiato.largeCupsUsed
            welcomeLabel.text = latteMacchiato.description
        }
    }
    
    @IBAction func makeCuppuchinoButton(_ sender: UIButton) {
        let cuppuchino = CoffeDrink.init(coffee: 10, milk: 30, cream: 0, smallCupsUsed: 0, mediumCupsUsed: 0, largeCupsUsed: 1)
        welcomeLabel.text = automaticCoffeeMachine.checkResourses()
        if welcomeLabel.text == "Coffee machine is ready" {
            automaticCoffeeMachine.coffee -= cuppuchino.coffee
            automaticCoffeeMachine.milk -= cuppuchino.milk
            automaticCoffeeMachine.largeCups -= cuppuchino.largeCupsUsed
            welcomeLabel.text = cuppuchino.description
        }
    }
    
    @IBAction func makeVienneseCoffee(_ sender: UIButton) {
        let vienneseCoffee = CoffeDrink.init(coffee: 10, milk: 0, cream: 20, smallCupsUsed: 0, mediumCupsUsed: 1, largeCupsUsed: 0)
        welcomeLabel.text = automaticCoffeeMachine.checkResourses()
        if welcomeLabel.text == "Coffee machine is ready" {
            automaticCoffeeMachine.coffee -= vienneseCoffee.coffee
            automaticCoffeeMachine.cream -= vienneseCoffee.cream
            automaticCoffeeMachine.mediumCups -= vienneseCoffee.mediumCupsUsed
            welcomeLabel.text = vienneseCoffee.description
        }
    }
    
    @IBAction func makeDopioButton(_ sender: UIButton) {
        let dopio = CoffeDrink.init(coffee: 20, milk: 0, cream: 0, smallCupsUsed: 0, mediumCupsUsed: 1, largeCupsUsed: 0)
        welcomeLabel.text = automaticCoffeeMachine.checkResourses()
        if welcomeLabel.text == "Coffee machine is ready" {
            automaticCoffeeMachine.coffee -= dopio.coffee
            automaticCoffeeMachine.mediumCups -= dopio.mediumCupsUsed
            welcomeLabel.text = dopio.description
        }
    }
    
    @IBAction func makeEspressoButton(_ sender: UIButton) {
        let espresso = CoffeDrink.init(coffee: 10, milk: 0, cream: 0, smallCupsUsed: 1, mediumCupsUsed: 0, largeCupsUsed: 0)
        welcomeLabel.text = automaticCoffeeMachine.checkResourses()
        if welcomeLabel.text == "Coffee machine is ready" {
            automaticCoffeeMachine.coffee -= espresso.coffee
            automaticCoffeeMachine.smallCups -= espresso.smallCupsUsed
            welcomeLabel.text = espresso.description
        }
    }
    
    @IBAction func onButton(_ sender: UIButton) {
        welcomeLabel.text = "Hello, I'm your new coffee machine =) Would you like some coffee?"
    }
    
}

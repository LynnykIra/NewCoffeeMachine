//
//  ServiceViewController.swift
//  NewCoffeeMachine
//
//  Created by Ира Линник on 23.01.2020.
//  Copyright © 2020 Ира Линник. All rights reserved.
//

import UIKit

class ServiceViewController: UIViewController {
    
    @IBOutlet weak var creamImage: UIImageView!
    @IBOutlet weak var milkImage: UIImageView!
    @IBOutlet weak var coffeeBeansImage: UIImageView!
    @IBOutlet weak var serviceBackgroundImage: UIImageView!
    @IBOutlet weak var coffeeServiceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        coffeeServiceLabel.text = "Coffee"
        serviceBackgroundImage.image = UIImage (named: "cogwheel")
        coffeeBeansImage.image = UIImage (named: "coffeeBeans")
        milkImage.image = UIImage (named: "milk")
        creamImage.image = UIImage (named: "cream")
    }
    let automaticCoffeeMachine = CoffeeMachine.init(isAutomatic: true, materialOfCase: "metal", coffee: 5)
    
    @IBAction func addCoffeeButton(_ sender: UIButton) {
        automaticCoffeeMachine.addCoffee()
    }
    
    @IBAction func addMilkButton(_ sender: UIButton) {
        automaticCoffeeMachine.addMilk()
    }
    
    @IBAction func addCreamButton(_ sender: UIButton) {
        automaticCoffeeMachine.addCream()
    }
    @IBAction func addSmallCupsButton(_ sender: Any) {
        automaticCoffeeMachine.addSmallCups()
    }
    
    @IBAction func addMediumCupsButton(_ sender: UIButton) {
        automaticCoffeeMachine.addMediumCups()
    }
    
    @IBAction func addLargeCupsButton(_ sender: UIButton) {
        automaticCoffeeMachine.addLargeCups()
    }
    
}


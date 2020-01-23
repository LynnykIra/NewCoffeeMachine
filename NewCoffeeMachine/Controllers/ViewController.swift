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
    func addBackgroundImage() {
        backgroundMainStoryboard.image = UIImage (named: "coffee")
    }
    @IBAction func onButton(_ sender: UIButton) {
        
        let automaticCoffeeMachine = CoffeeMachine.init(isAutomatic: true, materialOfCase: "metal")
        welcomeLabel.text = "Hello, I'm your new coffee machine =) Would you like some coffee?"
        
    }
}


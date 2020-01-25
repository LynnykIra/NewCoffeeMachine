//
//  InfoViewController.swift
//  NewCoffeeMachine
//
//  Created by Ира Линник on 25.01.2020.
//  Copyright © 2020 Ира Линник. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {

    @IBOutlet weak var infoScreenLabel: UILabel!
    @IBOutlet weak var infoScreenBackgroundImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        infoScreenBackgroundImage.image = UIImage(named: "coffeeMachine")
        infoScreenLabel.text = automaticCoffeeMachine.description
        // Do any additional setup after loading the view.
    }
     let automaticCoffeeMachine = CoffeeMachine.init(isAutomatic: true, materialOfCase: "metal")
}

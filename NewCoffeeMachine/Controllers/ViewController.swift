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
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        addBackgroundImage()
    }
    func addBackgroundImage() {
    backgroundMainStoryboard.image = UIImage (named: "coffee")
    }
}


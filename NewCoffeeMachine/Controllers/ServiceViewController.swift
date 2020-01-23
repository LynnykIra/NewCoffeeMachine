//
//  ServiceViewController.swift
//  NewCoffeeMachine
//
//  Created by Ира Линник on 23.01.2020.
//  Copyright © 2020 Ира Линник. All rights reserved.
//

import UIKit

class ServiceViewController: UIViewController {

    @IBOutlet weak var serviceBackgroundImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        addServiceBAckgroundIamge()
    }
    func addServiceBAckgroundIamge() {
        serviceBackgroundImage.image = UIImage (named: "cogwheel")
    }
}

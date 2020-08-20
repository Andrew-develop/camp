//
//  Step5.swift
//  RU_AndrewF_GYM
//
//  Created by Sergio Ramos on 23/07/2020.
//  Copyright © 2020 Sergio Ramos. All rights reserved.
//

import UIKit

class Step5: UIViewController {
    
    @IBOutlet weak var height: UITextField!
    @IBOutlet weak var weight: UITextField!
    
    let defaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func nextButton(_ sender: UIButton) {
        defaults.set(height.text, forKey: "Height")
        defaults.set(weight.text, forKey: "Weight")
        let viewController = storyboard?.instantiateViewController(withIdentifier: "SignIn") as! UIViewController
        self.present(viewController, animated: false)
    }
    
}


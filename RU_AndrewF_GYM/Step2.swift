//
//  Step2.swift
//  RU_AndrewF_GYM
//
//  Created by Sergio Ramos on 23/07/2020.
//  Copyright © 2020 Sergio Ramos. All rights reserved.
//

import UIKit

class Step2: UIViewController {
    
    @IBOutlet weak var genderF: UIButton!
    @IBOutlet weak var genderM: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func gender(_ sender: UIButton) {
        if genderF.backgroundColor == UIColor.white && genderM.backgroundColor == UIColor.white {
            sender.backgroundColor = UIColor.green
        }
        else if genderF.backgroundColor == UIColor.green && sender.restorationIdentifier == "Male" {
            genderF.backgroundColor = UIColor.white
            genderM.backgroundColor = UIColor.green
        }
        else if genderM.backgroundColor == UIColor.green && sender.restorationIdentifier == "Female" {
            genderM.backgroundColor = UIColor.white
            genderF.backgroundColor = UIColor.green
        }
    }
    
    
    @IBAction func nextButton(_ sender: UIButton) {
        if genderM.backgroundColor == UIColor.green {
            sender.backgroundColor = UIColor.green
            let viewController = storyboard?.instantiateViewController(withIdentifier: "Step3Male") as! UIViewController
            self.present(viewController, animated: true)
        }
        else if genderF.backgroundColor == UIColor.green {
            sender.backgroundColor = UIColor.green
            let viewController = storyboard?.instantiateViewController(withIdentifier: "Step3Female") as! UIViewController
            self.present(viewController, animated: true)
        }
    }
    


}
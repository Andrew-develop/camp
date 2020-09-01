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
    
    let defoults = UserDefaults.standard
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func gender(_ sender: UIButton) {
        if sender.restorationIdentifier == "Male" {
            genderM.backgroundColor = #colorLiteral(red: 0.8901960784, green: 0.8745098039, blue: 0.737254902, alpha: 1)
            genderF.backgroundColor = UIColor.white
        }
        else {
            genderM.backgroundColor = UIColor.white
            genderF.backgroundColor = #colorLiteral(red: 0.8901960784, green: 0.8745098039, blue: 0.737254902, alpha: 1)
        }
    }
    
    
    @IBAction func nextButton(_ sender: UIButton) {
        if genderM.backgroundColor == #colorLiteral(red: 0.8901960784, green: 0.8745098039, blue: 0.737254902, alpha: 1) {
            defoults.set("Male", forKey: "Gender")
            sender.backgroundColor = #colorLiteral(red: 0.8901960784, green: 0.8745098039, blue: 0.737254902, alpha: 1)
            let viewController = storyboard?.instantiateViewController(withIdentifier: "Step3Male") as! UIViewController
            self.present(viewController, animated: false)
        }
        else if genderF.backgroundColor == #colorLiteral(red: 0.8901960784, green: 0.8745098039, blue: 0.737254902, alpha: 1) {
            defoults.set("Female", forKey: "Gender")
            sender.backgroundColor = #colorLiteral(red: 0.8901960784, green: 0.8745098039, blue: 0.737254902, alpha: 1)
            let viewController = storyboard?.instantiateViewController(withIdentifier: "Step3Female") as! UIViewController
            self.present(viewController, animated: false)
        }
    }
    


}

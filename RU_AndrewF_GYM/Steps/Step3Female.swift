//
//  Step3Female.swift
//  RU_AndrewF_GYM
//
//  Created by Sergio Ramos on 23/07/2020.
//  Copyright © 2020 Sergio Ramos. All rights reserved.
//

import UIKit

class Step3Female: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func partOfBody(_ sender: UIButton) {
        sender.backgroundColor = #colorLiteral(red: 0.8901960784, green: 0.8745098039, blue: 0.737254902, alpha: 1)
        let viewController = storyboard?.instantiateViewController(withIdentifier: "Step4") as! UIViewController
        self.present(viewController, animated: false)
    }
    


}

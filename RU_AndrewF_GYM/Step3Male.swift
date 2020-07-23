//
//  Step3Male.swift
//  RU_AndrewF_GYM
//
//  Created by Sergio Ramos on 23/07/2020.
//  Copyright © 2020 Sergio Ramos. All rights reserved.
//

import UIKit

class Step3Male: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    @IBAction func partOfBody(_ sender: UIButton) {
        sender.backgroundColor = UIColor.green
        let viewController = storyboard?.instantiateViewController(withIdentifier: "Step4") as! UIViewController
        self.present(viewController, animated: true)
    }

}

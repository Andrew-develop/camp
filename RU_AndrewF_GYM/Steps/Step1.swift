//
//  ViewController.swift
//  RU_AndrewF_GYM
//
//  Created by Sergio Ramos on 22/07/2020.
//  Copyright © 2020 Sergio Ramos. All rights reserved.
//

import UIKit

class Step1: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    @IBAction func target(_ sender: UIButton) {
        sender.backgroundColor = UIColor.green
        let viewController = storyboard?.instantiateViewController(withIdentifier: "Step2") as! UIViewController
        self.present(viewController, animated: false)
    }
    

}


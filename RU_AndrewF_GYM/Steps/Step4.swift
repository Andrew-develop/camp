//
//  Step4.swift
//  RU_AndrewF_GYM
//
//  Created by Sergio Ramos on 23/07/2020.
//  Copyright © 2020 Sergio Ramos. All rights reserved.
//

import UIKit

class Step4: UIViewController {
    
    @IBOutlet weak var jun: UIButton!
    @IBOutlet weak var mid: UIButton!
    @IBOutlet weak var sen: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func howMuch(_ sender: UIButton) {
        if sender.restorationIdentifier == "jun" {
            jun.backgroundColor = UIColor.green
            mid.backgroundColor = UIColor.white
            sen.backgroundColor = UIColor.white
        }
        else if sender.restorationIdentifier == "mid" {
            jun.backgroundColor = UIColor.white
            mid.backgroundColor = UIColor.green
            sen.backgroundColor = UIColor.white
        }
        else if sender.restorationIdentifier == "sen" {
            jun.backgroundColor = UIColor.white
            mid.backgroundColor = UIColor.white
            sen.backgroundColor = UIColor.green
        }
    }
    
    @IBAction func nextButton(_ sender: UIButton) {
        sender.backgroundColor = UIColor.green
        let viewController = storyboard?.instantiateViewController(withIdentifier: "Step5") as! UIViewController
        self.present(viewController, animated: false)
        self.dismiss(animated: false, completion: nil)
    }
    
}


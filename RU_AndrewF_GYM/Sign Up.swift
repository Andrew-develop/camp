//
//  Sign Up.swift
//  RU_AndrewF_GYM
//
//  Created by Sergio Ramos on 17/08/2020.
//  Copyright © 2020 Sergio Ramos. All rights reserved.
//

import UIKit

class SignUp: UIViewController {
    
    @IBOutlet weak var loginField: UITextField!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passOne: UITextField!
    @IBOutlet weak var passTwo: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginField.setLeftImage(imageName: "login")
        emailField.setLeftImage(imageName: "email")
        passOne.setLeftImage(imageName: "password")
        passTwo.setLeftImage(imageName: "password")
    }
    
    @IBAction func signUp(_ sender: UIButton) {
    }
    
}


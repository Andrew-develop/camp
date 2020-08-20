//
//  Profile.swift
//  RU_AndrewF_GYM
//
//  Created by Sergio Ramos on 12/08/2020.
//  Copyright © 2020 Sergio Ramos. All rights reserved.
//

import UIKit

class Profile: UIViewController {
    
    @IBOutlet weak var countW: UILabel!
    @IBOutlet weak var countH: UILabel!
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var gender: UILabel!
    
    @IBOutlet weak var profileView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        countW.text = UserDefaults.standard.string(forKey: "Height")
        countH.text = UserDefaults.standard.string(forKey: "Weight")
        gender.text = UserDefaults.standard.string(forKey: "Gender")
    }
    
    
    
}




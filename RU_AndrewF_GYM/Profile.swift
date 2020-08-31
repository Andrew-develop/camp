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
    @IBOutlet weak var profileTable: UITableView!
    
    let data = ["Training rest","Notifications","Biometric","Start dialog","Privacy policy"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        countW.text = UserDefaults.standard.string(forKey: "Height")
        countH.text = UserDefaults.standard.string(forKey: "Weight")
        gender.text = UserDefaults.standard.string(forKey: "Gender")
    }
    
    
    
}

extension Profile: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! ProfileTableViewCell
        cell.typeSetting.text = data[indexPath.row]
        if data[indexPath.row] == "Notifications" {
            cell.notificationSwitch.isHidden = false
        }
        if data[indexPath.row] == "Training rest" {
            cell.restCounter.text = "30 sec"
            cell.restCounter.isHidden = false
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if data[indexPath.row] == "Biometric" {
            let alert = UIAlertController(title: "Biometric", message: "Please, Input Your Biometric Data", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))

            alert.addTextField(configurationHandler: { textField in
                textField.placeholder = "Weight"
            })
            
            alert.addTextField(configurationHandler: { textField in
                textField.placeholder = "Height"
            })

            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in

                if let name = alert.textFields?.first?.text {
                    print("Your name: \(name)")
                }
            }))

            self.present(alert, animated: true)
        }
    }
    
    
}


//
//  LessonsViewController.swift
//  RU_AndrewF_GYM
//
//  Created by Sergio Ramos on 19/08/2020.
//  Copyright © 2020 Sergio Ramos. All rights reserved.
//

import UIKit

class LessonsViewController: UIViewController {
    
    var data = ["","","","","",""]
    
    var typeLessons = ""
    
    @IBOutlet weak var handsButton: UIButton!
    @IBOutlet weak var spineButton: UIButton!
    @IBOutlet weak var torsoButton: UIButton!
    @IBOutlet weak var legsButton: UIButton!
    
    
    @IBOutlet weak var lessonsTable: UITableView!
    
    @IBAction func typeOfLesson(_ sender: UIButton) {
        typeLessons = sender.restorationIdentifier!
        updateButtons()
        sender.backgroundColor = #colorLiteral(red: 0.3236701488, green: 0.619733274, blue: 0.863648355, alpha: 1)
        sender.setTitleColor(UIColor.white, for: .normal)
        lessonsTable.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if typeLessons == "hands" {
            handsButton.backgroundColor = #colorLiteral(red: 0.3236701488, green: 0.619733274, blue: 0.863648355, alpha: 1)
            handsButton.setTitleColor(UIColor.white, for: .normal)
        }
        if typeLessons == "spine" {
            spineButton.backgroundColor = #colorLiteral(red: 0.3236701488, green: 0.619733274, blue: 0.863648355, alpha: 1)
            spineButton.setTitleColor(UIColor.white, for: .normal)
        }
        if typeLessons == "torso" {
            torsoButton.backgroundColor = #colorLiteral(red: 0.3236701488, green: 0.619733274, blue: 0.863648355, alpha: 1)
            torsoButton.setTitleColor(UIColor.white, for: .normal)
        }
        if typeLessons == "legs" {
            legsButton.backgroundColor = #colorLiteral(red: 0.3236701488, green: 0.619733274, blue: 0.863648355, alpha: 1)
            torsoButton.setTitleColor(UIColor.white, for: .normal)
        }
    }
    func updateButtons() {
        handsButton.backgroundColor = UIColor.white
        spineButton.backgroundColor = UIColor.white
        torsoButton.backgroundColor = UIColor.white
        legsButton.backgroundColor = UIColor.white
        handsButton.setTitleColor(#colorLiteral(red: 0.3236701488, green: 0.619733274, blue: 0.863648355, alpha: 1), for: .normal)
        spineButton.setTitleColor(#colorLiteral(red: 0.3236701488, green: 0.619733274, blue: 0.863648355, alpha: 1), for: .normal)
        torsoButton.setTitleColor(#colorLiteral(red: 0.3236701488, green: 0.619733274, blue: 0.863648355, alpha: 1), for: .normal)
        legsButton.setTitleColor(#colorLiteral(red: 0.3236701488, green: 0.619733274, blue: 0.863648355, alpha: 1), for: .normal)
    }
}

extension LessonsViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
           return data.count
       }
       
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! TableViewCell
        cell.imageCell.image = UIImage(named: "\(typeLessons)")
        cell.labelCell.text = typeLessons
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200.0
    }
}

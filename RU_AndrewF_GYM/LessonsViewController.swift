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
    
    var typeLesson = 0
    
    @IBOutlet weak var lessonsTable: UITableView!
    
    @IBAction func typeOfLesson(_ sender: UIButton) {
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
}

extension LessonsViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
           return data.count
       }
       
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.imageView?.image = UIImage(named: "hands")
        return cell
    }
       
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 146.0
    }
}

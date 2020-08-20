//
//  HomeGymViewController.swift
//  RU_AndrewF_GYM
//
//  Created by Sergio Ramos on 20/08/2020.
//  Copyright © 2020 Sergio Ramos. All rights reserved.
//

import UIKit

class HomeGymViewController: UIViewController {
    
    var data = ["hands","torso","spine","legs"]
    
    @IBOutlet weak var homeGymTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}

extension HomeGymViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.imageView?.image = UIImage(named: "\(data[indexPath.row])")
        cell.textLabel?.text = data[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 146.0
    }
    
}

//
//  MenuCode.swift
//  DollopApp
//
//  Created by Zoe Paula Xanos on 7/10/18.
//  Copyright © 2018 Zoe Paula Xanos. All rights reserved.
//

import Foundation
import UIKit

class MenuCode: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var menuItems = ["HOT DRINKS","COLD DRINKS","SPECIALTY DRINKS","TEA","BREAKFAST","LUNCH"]
    let menuCellIdentifier = "Cell"
    
    @IBOutlet var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuItems.count
    }
    
   // func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    //    ikjfasf
   // }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let row = indexPath.row
        cell.textLabel?.text = menuItems[row]
        cell.textLabel?.textColor = UIColor(hue: 0.6667, saturation: 0.02, brightness: 0.95, alpha: 1.0)
        return cell
    }
    
}


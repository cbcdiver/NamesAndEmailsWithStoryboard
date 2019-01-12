//
//  TableViewController.swift
//  NamesAndEmailsWithStoryboard
//
//  Created by Chris Chadillon on 2019-01-12.
//  Copyright © 2019 Chris Chadillon. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    let someData = [["name":"Bob", "email":"bob@ranch.com"],
                    ["name":"Alice", "email":"bob@burgers.com"],
                    ["name":"Eve","email":"eve@spynet.com"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return someData.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let theCell = tableView.dequeueReusableCell(withIdentifier: "MainCell", for: indexPath)
        let name = someData[indexPath.row]["name"]!
        let email = someData[indexPath.row]["email"]!
        theCell.textLabel?.text = name + " - " + email
        return theCell
    }
}

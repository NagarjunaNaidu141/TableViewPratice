//
//  MyTable06TableViewController.swift
//  TableView
//
//  Created by Nagarjuna Naidu on 23/03/25.
//

import UIKit

class MyTable06TableViewController: UITableViewController {
    
    public var model: [(String,(()-> Void))] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return model.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = model[indexPath.row].0
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        model[indexPath.row].1()
    }
  
}

    

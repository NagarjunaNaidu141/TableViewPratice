//
//  SampleTableViewOneViewController.swift
//  TableView
//
//  Created by Nagarjuna Naidu on 21/03/25.
//

import UIKit

class SampleTableViewOneViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    let names = ["Nagarjun", "Sai", "Ravi", "Vijay", "Suresh", "Ramesh", "Srinivas", "Prabhu", "Rajesh", "Siva","Nagarjun", "Sai", "Ravi", "Vijay", "Suresh", "Ramesh", "Srinivas", "Prabhu", "Rajesh", "Siva"]
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
    
    }
    
}

extension SampleTableViewOneViewController: UITableViewDelegate, UITableViewDataSource{
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for:   indexPath)
        cell.textLabel?.text = names[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("You tapped me!")
    }
    
    
}

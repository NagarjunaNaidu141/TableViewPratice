//
//  ButtonCellActionViewController.swift
//  TableView
//
//  Created by Nagarjuna Naidu on 24/03/25.
//

import UIKit

class ButtonCellActionViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, ButtonCellActionTableViewCellDelegate {
    func didTapButton(with title: String) {
        print("Button tapped in cell: \(title)")
    }
    
    
    @IBOutlet var myTable: UITableView!
    let data = ["first","second","third","fourth","fifth"]
    override func viewDidLoad() {
        super.viewDidLoad()
        myTable.dataSource = self
        myTable.delegate = self
        myTable.register(ButtonCellActionTableViewCell.nib(), forCellReuseIdentifier: ButtonCellActionTableViewCell.identifier)

        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: ButtonCellActionTableViewCell.identifier, for: indexPath) as! ButtonCellActionTableViewCell
        cell.configure(with: data[indexPath.row])
        cell.delegate = self
        return cell
    }

}

//
//  TableViewCustomCellsViewController.swift
//  TableView
//
//  Created by Nagarjuna Naidu on 21/03/25.
//

import UIKit

class TableViewCustomCellsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    let names = ["image1","Image2","Image3","Image4","Image5","Image6","Image7","Image8","Image9","Image10"]
    override func viewDidLoad() {
        super.viewDidLoad()
        let nib = UINib(nibName: "DemoTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "DemoTableViewCell")
        tableView.delegate = self
        tableView.dataSource = self

        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DemoTableViewCell", for: indexPath) as! DemoTableViewCell
        cell.textlabel.text = names[indexPath.row]
        cell.uiImageView.backgroundColor = .red
        return cell
    }

}

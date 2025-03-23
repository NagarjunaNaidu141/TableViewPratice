//
//  TableViewCustomCellsViewController.swift
//  TableView
//
//  Created by Nagarjuna Naidu on 21/03/25.
//

import UIKit

class TableViewCustomCellsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableViewCustom: UITableView!
    let names = ["image1","Image2","Image3","Image4","Image5","Image6","Image7","Image8","Image9","Image10"]
    override func viewDidLoad() {
        super.viewDidLoad()
       
        let nib = UINib(nibName: "DemoTableViewCell2", bundle: nil)
        tableViewCustom.register(nib, forCellReuseIdentifier: "DemoTableViewCell2")
        tableViewCustom.delegate = self
        tableViewCustom.dataSource = self

        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableViewCustom.dequeueReusableCell(withIdentifier: "DemoTableViewCell2", for: indexPath) as? DemoTableViewCell2 {
            cell.textLabelOne.text = names[indexPath.row]
            cell.uiImageView.backgroundColor = .red
            return cell
        }
        return UITableViewCell()
        
    }

}

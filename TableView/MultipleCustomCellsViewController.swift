//
//  MultipleCustomCellsViewController.swift
//  TableView
//
//  Created by Nagarjuna Naidu on 24/03/25.
//

import UIKit

class MultipleCustomCellsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    //Property with a Closure Initialization
    private let tableView:UITableView = {
        let table = UITableView()
        table.register(MultipleCustomCellsTableViewCell.self, forCellReuseIdentifier: MultipleCustomCellsTableViewCell.identifier)
        table.register(MultipleCustomImagesTableViewCell.nib(), forCellReuseIdentifier: MultipleCustomImagesTableViewCell.identifier)
        table.register(MultipleCustomImageLabelTableViewCell.self, forCellReuseIdentifier: MultipleCustomImageLabelTableViewCell.identifier)
        return table
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
        
        // Do any additional setup after loading the view.
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = view.bounds
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 15
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row < 5{
            let cell = tableView.dequeueReusableCell(withIdentifier: MultipleCustomImageLabelTableViewCell.identifier, for: indexPath) as! MultipleCustomImageLabelTableViewCell
            cell.configure()
            return cell
        }
        if indexPath.row < 10{
            //if we not type cast the celll will not aware what to return
            let imageCell = tableView.dequeueReusableCell(withIdentifier: MultipleCustomImagesTableViewCell.identifier, for: indexPath) as! MultipleCustomImagesTableViewCell
            imageCell.configure(with: "photo7")
            return imageCell
        }
        let cell = tableView.dequeueReusableCell(withIdentifier: MultipleCustomCellsTableViewCell.identifier, for: indexPath)
        cell.textLabel?.text = "Hello cell"
        return cell
    }


}

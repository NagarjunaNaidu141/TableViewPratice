//
//  CustomizeTableViewCellViewController.swift
//  TableView
//
//  Created by Nagarjuna Naidu on 25/03/25.
//

import UIKit

class CustomizeTableViewCellViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    

    private let table = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        table.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        view.addSubview(table)
        table.delegate = self
        table.dataSource = self

        // Do any additional setup after loading the view.
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        table.frame = view.bounds
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "Hello Customize cell"
        cell.textLabel?.numberOfLines = 0
        if indexPath.row % 2 == 0 {
            cell.imageView?.image = UIImage(systemName: "star")
            cell.backgroundColor = .yellow
        }else{
            cell.backgroundColor = .red
        }
        return cell
    }


}

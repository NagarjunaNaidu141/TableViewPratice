//
//  CustomTableCell3ViewController.swift
//  TableView
//
//  Created by Nagarjuna Naidu on 22/03/25.
//

import UIKit

class CustomTableCell3ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet var table:UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        table.register(DemoCustomcellTableViewCell.nib(), forCellReuseIdentifier: DemoCustomcellTableViewCell.identifier)
        table.register(UINib(nibName: "DemoCustomcellTableViewCell", bundle: nil), forCellReuseIdentifier: DemoCustomcellTableViewCell.identifier)

        table.dataSource = self
        table.delegate = self
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print("indexPath.row:\(indexPath.row)")
        if indexPath.row > 2 {
            let customCell = table.dequeueReusableCell(withIdentifier: "DemoCustomcellTableViewCell", for: indexPath) as! DemoCustomcellTableViewCell
            customCell.configure(with: "Custom Cell", myImage: "gear")
            return customCell
        }
        let cell = table.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "hello World!!"
        let mySwitch = UISwitch()
        mySwitch.addTarget(self, action: #selector(didChangeSwitch(sender:)), for: .valueChanged)
        mySwitch.isOn = true
        cell.accessoryView = mySwitch
        return cell
    }
    @objc func didChangeSwitch(sender: UISwitch){
        if sender.isOn{
            print("user turned it on")
        }
        else{
            print("its off")
        }
    }

}

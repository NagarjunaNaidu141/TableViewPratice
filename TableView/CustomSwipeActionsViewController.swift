//
//  CustomSwipeActionsViewController.swift
//  TableView
//
//  Created by Nagarjuna Naidu on 25/03/25.
//

import UIKit

class User{
    let name: String
    var isfavorite: Bool
    var isMuted: Bool
    
    init(name: String, isfavorite: Bool, isMuted: Bool) {
        self.name = name
        self.isfavorite = isfavorite
        self.isMuted = isMuted
    }
}

class CustomSwipeActionsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    private let table: UITableView = {
        let table = UITableView()
        table.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        return table
    }()
    var users :[User] = [
        "prathap","nagarjuna","suresh","srinivas","ravi","kumar","sai","prabhu","vijay","raja"
    ].compactMap({
        User(name: $0, isfavorite: false, isMuted: false)
    })
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(table)
        table.dataSource = self
        table.delegate = self
        title = "Custom Swipe Actions"
        
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        table.frame = view.bounds
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
        
    }
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        let deleteAction = UITableViewRowAction(style: .destructive, title: "Delete") { (action, indexPath) in
            self.users.remove(at: indexPath.row)
            self.table.deleteRows(at: [indexPath], with: .automatic)
        }
        let user = users[indexPath.row]
        let favoriteAction = UITableViewRowAction(style: .normal, title: user.isfavorite ? "Unfavorite" : "Favorite") { (action, indexPath) in
            self.users[indexPath.row].isfavorite.toggle()
            self.table.reloadRows(at: [indexPath], with: .automatic)
        }
        let mutedAction = UITableViewRowAction(style: .normal, title: user.isMuted ? "unMuted" : "Muted") { (action, indexPath) in
            self.users[indexPath.row].isMuted.toggle()
            self.table.reloadRows(at: [indexPath], with: .automatic)
        }
        favoriteAction.backgroundColor = .systemBlue
        mutedAction.backgroundColor = .systemOrange
            
            return [deleteAction,favoriteAction,mutedAction]
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let user = users[indexPath.row]
        let cell = table.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = user.name
        if user.isfavorite {
            cell.backgroundColor = .yellow
        }else if user.isMuted{
            cell.backgroundColor = .red
            
        }else{
            cell.backgroundColor = nil
        }
        return cell
    }
}

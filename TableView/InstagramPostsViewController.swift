//
//  InstagramPostsViewController.swift
//  TableView
//
//  Created by Nagarjuna Naidu on 24/03/25.
//

import UIKit

class InstagramPostsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var model = [InstagramPosts]()
    @IBOutlet var table: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        table.register(InstagramTableViewCell.nib(), forCellReuseIdentifier: InstagramTableViewCell.identifier)
        table.dataSource = self
        table.delegate = self
        model.append(InstagramPosts(username:"Nagarjuna", postImageName: "photo6", numberofLikes: 100, userImageName: "Image"))
        
        model.append(InstagramPosts(username:"prathap", postImageName: "photo7", numberofLikes: 300, userImageName: "Image"))
        model.append(InstagramPosts(username:"venkat", postImageName: "photo3", numberofLikes: 200, userImageName: "Image"))
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return model.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = table.dequeueReusableCell(withIdentifier: InstagramTableViewCell.identifier, for: indexPath) as! InstagramTableViewCell
        cell.configure(with: model[indexPath.row])
        return cell
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Selected row \(indexPath.row)")
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120+140+view.frame.size.width
    }
    

}
struct InstagramPosts{
    let username: String
    let postImageName: String
    let numberofLikes: Int
    let userImageName: String
    
}

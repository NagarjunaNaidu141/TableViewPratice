//
//  InstagramTableViewCell.swift
//  TableView
//
//  Created by Nagarjuna Naidu on 24/03/25.
//

import UIKit

class InstagramTableViewCell: UITableViewCell {
    @IBOutlet var userImageView: UIImageView!
    @IBOutlet var postImageView: UIImageView!
    @IBOutlet var likesLabel: UILabel!
    @IBOutlet var usernameLabel: UILabel!
    static let identifier = "InstagramTableViewCell"
    static func nib()->UINib{
        return UINib(nibName: "InstagramTableViewCell", bundle: nil)
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    func configure(with model: InstagramPosts){
        self.likesLabel.text = "\(model.numberofLikes) likes"
        self.usernameLabel.text = model.username
        self.userImageView.image = UIImage(named: model.userImageName)
        self.postImageView.image = UIImage(named: model.postImageName)
    }
}

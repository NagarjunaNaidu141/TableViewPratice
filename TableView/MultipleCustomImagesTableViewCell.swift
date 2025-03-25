//
//  MultipleCustomImagesTableViewCell.swift
//  TableView
//
//  Created by Nagarjuna Naidu on 24/03/25.
//

import UIKit

class MultipleCustomImagesTableViewCell: UITableViewCell {
    @IBOutlet var myImageView: UIImageView!
    static let identifier = "MultipleCustomImagesTableViewCell"
    static func nib() -> UINib {
        return UINib(nibName: "MultipleCustomImagesTableViewCell", bundle: nil)
    }
    
    func configure(with imageName: String){
        myImageView.image = UIImage(named: imageName)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

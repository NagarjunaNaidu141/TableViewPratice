//
//  DemoTableViewCell.swift
//  TableView
//
//  Created by Nagarjuna Naidu on 21/03/25.
//

import UIKit

class DemoTableViewCell2: UITableViewCell {
//    @IBOutlet weak var textlabel: UILabel!
    @IBOutlet weak var uiImageView: UIImageView!
    @IBOutlet weak var textLabelOne: UILabel!

//    static let identifier = "DemoTableViewCell2"
//    static func  nib() -> UINib {
//        return UINib(nibName: "DemoTableViewCell2", bundle: nil)
//    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

//
//  DemoTableViewCell.swift
//  TableView
//
//  Created by Nagarjuna Naidu on 21/03/25.
//

import UIKit

class DemoTableViewCell: UITableViewCell {
    @IBOutlet weak var textlabel: UILabel!
    @IBOutlet weak var uiImageView: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

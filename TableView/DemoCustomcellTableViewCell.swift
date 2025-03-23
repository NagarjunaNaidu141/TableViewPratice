//
//  DemoCustomcellTableViewCell.swift
//  TableView
//
//  Created by Nagarjuna Naidu on 22/03/25.
//

import UIKit

class DemoCustomcellTableViewCell: UITableViewCell {
    
    @IBOutlet var imageViewCell: UIImageView!
    @IBOutlet var mylabel: UILabel!
    
    static let identifier = "DemoCustomcellTableViewCell"
    static func  nib() -> UINib {
        return UINib(nibName: "DemoCustomcellTableViewCell", bundle: nil)
    }
    

    public func configure(with title: String, myImage: String) {
        mylabel.text = title
        if let myImage = UIImage(systemName: myImage) {
            imageViewCell?.image = myImage
        }
    }

        override func awakeFromNib() {
            super.awakeFromNib()
            // Initialization code
           // imageView?.contentMode = .scaleAspectFit
        }
        
        override func setSelected(_ selected: Bool, animated: Bool) {
            super.setSelected(selected, animated: animated)
            
            // Configure the view for the selected state
        }
        
    }

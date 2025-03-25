//
//  MultipleCustomImageLabelTableViewCell.swift
//  TableView
//
//  Created by Nagarjuna Naidu on 24/03/25.
//

import UIKit

class MultipleCustomImageLabelTableViewCell: UITableViewCell {

  static let identifier = "MultipleCustomImageLabelTableViewCell"
    static let myLabel: UILabel = {
        let label = UILabel()
        return label
        
    }()
    static let myImageView: UIImageView = {
        let image = UIImageView()
        return image
        
    }()

    public func configure(){
        contentView.addSubview(MultipleCustomImageLabelTableViewCell.myImageView)
        contentView.addSubview(MultipleCustomImageLabelTableViewCell.myLabel)
        MultipleCustomImageLabelTableViewCell.myLabel.text = "Hello World"
        MultipleCustomImageLabelTableViewCell.myLabel.textAlignment = .center
        MultipleCustomImageLabelTableViewCell.myImageView.image = UIImage(named: "photo5")
        MultipleCustomImageLabelTableViewCell.myImageView.contentMode = .scaleAspectFit
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        MultipleCustomImageLabelTableViewCell.myImageView.frame = CGRect(x: 5, y: 5, width: 100, height: 100)
        MultipleCustomImageLabelTableViewCell.myLabel.frame = CGRect(x: 105, y: 5, width: contentView.frame.size.width-105, height: 100)
    }

}

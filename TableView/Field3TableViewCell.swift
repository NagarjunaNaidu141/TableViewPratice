//
//  Field3TableViewCell.swift
//  TableView
//
//  Created by Nagarjuna Naidu on 23/03/25.
//

import UIKit

class Field3TableViewCell: UITableViewCell,UITextFieldDelegate {
    
    static let identifier = "Field3TableViewCell"
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    
    @IBOutlet var textField3: UITextField!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        textField3.resignFirstResponder()
        textField3.placeholder = "Enter text here"
        textField3.delegate = self
        
        
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("\(textField.text ?? "")")
        return true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

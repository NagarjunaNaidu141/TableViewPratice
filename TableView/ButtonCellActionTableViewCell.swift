//
//  ButtonCellActionTableViewCell.swift
//  TableView
//
//  Created by Nagarjuna Naidu on 24/03/25.
//

import UIKit

protocol ButtonCellActionTableViewCellDelegate: AnyObject {
    func didTapButton(with title: String)
}
class ButtonCellActionTableViewCell: UITableViewCell {
    
    weak var delegate: ButtonCellActionTableViewCellDelegate?

    static let identifier = "ButtonCellActionTableViewCell"
    static func nib() -> UINib {
      return  UINib(nibName: "ButtonCellActionTableViewCell", bundle: nil)
    }
    
    @IBOutlet weak var button: UIButton!
    private var title : String = ""
    @IBAction func didTapButton() {
        delegate?.didTapButton(with: title)
    }
    func configure(with title:String){
        self.title = title
        button.setTitle(title, for: .normal)
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        button.setTitleColor(.link, for: .normal)
    }


    
}

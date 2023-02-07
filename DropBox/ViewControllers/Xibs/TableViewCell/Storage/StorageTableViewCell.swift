//
//  StorageTableViewCell.swift
//  DropBox
//
//  Created by Eng. Yahya M. Abu Musameh on 3/27/22.
//

import UIKit

class StorageTableViewCell: UITableViewCell {
    
    @IBOutlet weak var lblTitle: UILabel!
    
    var object: String?
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func configerCell() {
        if let obj = self.object {
            lblTitle.text = obj
        }
    }
    
}

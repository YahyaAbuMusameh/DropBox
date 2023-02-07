//
//  MenuTableViewCell.swift
//  DropBox
//
//  Created by Eng. Yahya M. Abu Musameh on 3/26/22.
//

import UIKit

class MenuTableViewCell: UITableViewCell {
    
    @IBOutlet weak var lbltitle: UILabel!
    
    var object: GlobalConstants.Menu?
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func configerCell() {
        if let obj = self.object {
            lbltitle.text = obj.name
        }
    }
    
}

//
//  UITableViewEx.swift
//  DropBox
//
//  Created by Eng. Yahya M. Abu Musameh on 3/26/22.
//

import Foundation
import UIKit

extension UITableView {
    
    func registerXib(identifier: String) {
        self.register(UINib.init(nibName: identifier, bundle: nil), forCellReuseIdentifier: identifier)
    }
    func registerXib(cell: UITableViewCell.Type) {
        self.registerXib(identifier: String(describing: cell.self))
    }
}


extension UITableViewCell {
    static var id: String {
        return String(describing: Self.self)
    }
}

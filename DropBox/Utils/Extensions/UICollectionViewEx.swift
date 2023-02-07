//
//  UICollectionViewEx.swift
//  DropBox
//
//  Created by Eng. Yahya M. Abu Musameh on 3/30/22.
//

import Foundation
import UIKit

extension UICollectionView {

    func registerXib(identifier: String) {
        self.register(UINib.init(nibName: identifier, bundle: nil), forCellWithReuseIdentifier: identifier)
    }
    
    func registerXib(cell: UICollectionViewCell.Type) {
        self.registerXib(identifier: String(describing: cell.self))
    }
}

extension UICollectionViewCell {
    static var id: String {
        return String(describing: Self.self)
    }
}

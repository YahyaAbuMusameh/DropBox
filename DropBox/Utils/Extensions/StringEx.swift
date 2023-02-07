//
//  StringEx.swift
//  DropBox
//
//  Created by Eng. Yahya M. Abu Musameh on 3/9/22.
//

import Foundation
import UIKit
extension String {

    var color_: UIColor {
        return UIColor.init(named: self) ?? UIColor.init(hexString: self)
    }
   
    var colorcg_: CGColor {
        return self.color_.cgColor
    }
   
    var image_: UIImage? {
        return UIImage.init(named: self)
    }

    var removeWhiteSpace_: String {
        return self.replacingOccurrences(of: " ", with: "")
    }
    
    var isValidValue: Bool {
        return !self.removeWhiteSpace_.isEmpty
    }
    
}

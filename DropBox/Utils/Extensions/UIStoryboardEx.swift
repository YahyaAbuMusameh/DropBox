//
//  UIStoryboardEx.swift
//  DropBox
//
//  Created by Eng. Yahya M. Abu Musameh on 3/9/22.
//

import Foundation
import UIKit

extension UIStoryboard {
    static let mainStoryboard = UIStoryboard.init(name: "Main", bundle: nil)

    func instantiateVC(withIdentifier identifier: String) -> UIViewController? {
        if let identifiersList = self.value(forKey: "identifierToNibNameMap") as? [String: Any] {
           if identifiersList[identifier] != nil {
               return self.instantiateViewController(withIdentifier: identifier)
           }
       }
       return nil
   }
}

//
//  UIViewEx.swift
//  DropBox
//
//  Created by Eng. Yahya M. Abu Musameh on 3/2/22.
//

import Foundation
import UIKit

extension UIView {
    
    @IBInspectable var borderColor: UIColor {
        set {
            self.layer.borderColor = newValue.cgColor
        }
        get {
            return .gray
        }
    }
    @IBInspectable var borderWidth: CGFloat {
        set {
            self.layer.borderWidth = newValue
        }
        get {
            return layer.borderWidth
        }
    }
    @IBInspectable var cornerRadius: CGFloat {
        set {
            self.layer.cornerRadius = newValue
        }
        get {
            return layer.cornerRadius
        }
    }
    @IBInspectable var shadowColor: UIColor {
        set {
            self.layer.shadowColor = newValue.cgColor
        }
        get {
            return .gray
        }
    }
    @IBInspectable var shadowOffset: CGSize {
        set {
            self.layer.shadowOffset = newValue
        }
        get {
            return self.layer.shadowOffset
        }
    }
    @IBInspectable var shadowOpacity: CGFloat {
        set {
            self.layer.shadowOpacity = Float.init(newValue)
        }
        get {
            return CGFloat.init(layer.shadowOpacity)
        }
    }
    @IBInspectable var shadowRadius: CGFloat {
        set {
            self.layer.shadowRadius = newValue
        }
        get {
            return layer.shadowRadius
        }
    }
}

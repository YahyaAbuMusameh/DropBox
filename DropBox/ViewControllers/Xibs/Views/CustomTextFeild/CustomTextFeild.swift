//
//  CustomTextFeild.swift
//  DropBox
//
//  Created by Eng. Yahya M. Abu Musameh on 4/5/22.
//

import UIKit
import Foundation

class CustomTextFeild: UIView {
    
    @IBOutlet var contentView: UIView!
    
    @IBOutlet weak var lblTitle: UILabel!
    
    @IBOutlet weak var txtField: UITextField!
    
    @IBInspectable var title: String? {
        set {
            self.lblTitle.text = newValue
        }
        get {
            return lblTitle.text
        }
    }
    
    @IBInspectable var placeholder: String? {
        set {
            self.txtField.placeholder = newValue
        }
        get {
            return txtField.placeholder
        }
    }
    
    @IBInspectable var isSecure: Bool {
        set {
            self.txtField.isSecureTextEntry = newValue
        }
        get {
            return txtField.isSecureTextEntry
        }
    }
    
    var text: String? {
        return self.txtField.text
    }
    
    var isValidValue: Bool {
        return self.txtField.text?.isValidValue ?? false
    }
    var keyboardType: UIKeyboardType = .default {
        didSet {
            txtField.keyboardType = keyboardType
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureXib()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        configureXib()
    }
    
    private func configureXib() {
        Bundle.main.loadNibNamed("CustomTextFeild", owner: self, options: [:])
        contentView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        contentView.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(contentView)
        contentView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        contentView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        contentView.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        contentView.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        contentView.layoutIfNeeded()
    }
}


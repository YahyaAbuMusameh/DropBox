//
//  ChangePasswordViewController.swift
//  DropBox
//
//  Created by Eng. Yahya M. Abu Musameh on 4/5/22.
//

import UIKit

class ChangePasswordViewController: UIViewController {
    
    @IBOutlet weak var txtCurrentPassword: CustomTextFeild!
    
    @IBOutlet weak var txtNewPassword: CustomTextFeild!
    
    @IBOutlet weak var txtConfirmNewPassword: CustomTextFeild!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        localized()
        setupData()
        fetchData()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    @IBAction func btnSave(_ sender: Any) {
        if !validation() {
            return
        }
        debugPrint("You can save data.")
    }

}

extension ChangePasswordViewController {
    func setupView(){
        txtCurrentPassword.keyboardType = .emailAddress
    }
    func localized(){
        self.title = "Change Password"
    }
    func setupData(){
    }
    func fetchData(){
    }
}

extension ChangePasswordViewController {
    
    func validation() -> Bool {
        if txtCurrentPassword.isValidValue == false {
            self.showAlertMessage(message: "Sorry, current password is required.")
            return false
        }
        if txtNewPassword.isValidValue == false {
            self.showAlertMessage(message: "Sorry, nenw password is required.")
            return false
        }
        if txtConfirmNewPassword.isValidValue == false {
            self.showAlertMessage(message: "Sorry, confirm new password is required.")
            return false
        }
        if txtConfirmNewPassword.text != txtNewPassword.text {
            self.showAlertMessage(message: "Sorry, passwords is not match.")
            return false
        }
        return true
    }
}

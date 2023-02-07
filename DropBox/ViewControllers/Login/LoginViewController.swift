//
//  ViewController.swift
//  DropBox
//
//  Created by Eng. Yahya M. Abu Musameh on 1/24/22.
//


import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var Parentstack: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        localized()
        setupData()
        fetchData()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.isHideNavigation = true
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        Parentstack.directionalLayoutMargins.top = getStatusBarHeight() * -1
    }
    
  
    @IBAction func btnSignIn(_ sender: Any) {
        let vc = MyProfileViewController.storyboard_
        vc.rootPush()
    }
}

extension LoginViewController {
    func setupView(){
    }
    func localized(){
    }
    func setupData(){
    }
    func fetchData(){
    }
}



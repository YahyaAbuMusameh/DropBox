//
//  MainNavigationViewController.swift
//  DropBox
//
//  Created by Eng. Yahya M. Abu Musameh on 3/9/22.
//

import UIKit

class MainNavigationViewController: UINavigationController {
    
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
}

extension MainNavigationViewController {
    
    func setupView() {
        AppDelegate.shared?.rootNavigationController = self
        setRoot()
        if #available(iOS 15, *) {
            let apperance = UINavigationBarAppearance()
            apperance.configureWithOpaqueBackground()
            apperance.shadowImage = UIImage()
            apperance.shadowColor = .clear
            apperance.backgroundColor = "#FFFFFF".color_
            apperance.titleTextAttributes = [NSAttributedString.Key.foregroundColor: "#1B1D28".color_, NSAttributedString.Key.font: UIFont.init(name: "Gilroy-Bold", size: 16)]
            self.navigationBar.standardAppearance = apperance
            self.navigationBar.scrollEdgeAppearance = apperance
        } else {
            self.navigationBar.isTranslucent = false
            self.navigationBar.shadowImage = UIImage()
            self.navigationBar.barTintColor = "#FFFFFF".color_
            self.navigationBar.backgroundColor = "#FFFFFF".color_
            self.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: "#1B1D28".color_, NSAttributedString.Key.font: UIFont.init(name: "Gilroy-Bold", size: 16)]
        }
        self.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationBar.tintColor = "#22215B".color_
    }
    
    func localized() {
    }
    
    func setupData() {
    }
    
    func fetchData() {
    }
}
extension MainNavigationViewController {
    
    func setRoot() {
        let vc = LoginViewController.storyboard_
        vc.rootPush()
    }
}





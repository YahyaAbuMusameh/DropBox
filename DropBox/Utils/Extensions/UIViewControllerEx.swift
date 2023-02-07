//
//  UIViewControllerEx.swift
//  DropBox
//
//  Created by Eng. Yahya M. Abu Musameh on 3/2/22.
//

import Foundation
import UIKit
extension UIViewController {
    var isHideNavigation: Bool {
        set {
            self.navigationController?.setNavigationBarHidden(newValue, animated: true)
        }
        get {
            return self.navigationController?.isNavigationBarHidden ?? false
        }
    }
    
    func getStatusBarHeight() -> CGFloat {
        var statusBarHeight: CGFloat = 0
        if #available(iOS 13.0, *) {
            let window = UIApplication.shared.windows.filter {$0.isKeyWindow}.first
            statusBarHeight = window?.windowScene?.statusBarManager?.statusBarFrame.height ?? 0
        } else {
            statusBarHeight = UIApplication.shared.statusBarFrame.height
        }
        return statusBarHeight
    }
    
    class var storyboard_: UIViewController {
        if let vc = UIStoryboard.mainStoryboard.instantiateVC(withIdentifier: String(describing: Self.self)) {
            return vc
        }
        return UIViewController()
    }
    
    func push() {
        AppDelegate.shared?.rootNavigationController?.pushViewController(self, animated: true)
    }
    
    
    func pop() {
        AppDelegate.shared?.rootNavigationController?.popViewController(animated: true)
    }
    
    func rootPush() {
        AppDelegate.shared?.rootNavigationController?.setViewControllers([self], animated: true)
    }
   
    func presentVC() {
        AppDelegate.shared?.rootNavigationController?.present(self, animated: true, completion: nil)
    }
    
    func safePerformSegue(withIdentifier identifier: String, sender: Any?) {
        if canPerformSegue(identifier: identifier) {
            self.performSegue(withIdentifier: identifier, sender: sender)
        }
    }
   
    func canPerformSegue(identifier: String) -> Bool {
        guard let identifiers = value(forKey: "storyboardSegueTemplates") as? [NSObject] else {
            return false
        }
        let canPerform = identifiers.contains { (object) -> Bool in
            if let id = object.value(forKey: "_identifier") as? String {
                return id == identifier
            } else {
                return false
            }
        }
        return canPerform
    }
    
   
    func showAlertMessage(message: String?) {
        let alert = UIAlertController.init(title: "Alert", message: message, preferredStyle: .alert)
        let okayAction = UIAlertAction.init(title: "OK", style: .default) { action in
        }
        alert.addAction(okayAction)
        alert.presentVC()
    }
    
    func showErrorAlert(message: String?) {
        let alert = UIAlertController.init(title: "Error", message: message, preferredStyle: .alert)
        let okayAction = UIAlertAction.init(title: "OK", style: .default) { action in
        }
        alert.addAction(okayAction)
        alert.presentVC()
    }
    
    
    func showAlert(title: String?, message: String?, buttonAction1: @escaping (() -> Void)) {
        let alert = UIAlertController.init(title: title, message: message, preferredStyle: .alert)
        let okayAction = UIAlertAction.init(title: "OK", style: .default) { action in
            debugPrint("Okay aciton is pressed")
            buttonAction1()
        }
        alert.addAction(okayAction)
        alert.presentVC()
    }
   
    func showAlert(title: String?, message: String?, buttonTitle1: String = "OK", buttonTitle2: String = "Cancel", buttonAction1: @escaping (() -> Void), buttonAction2: @escaping (() -> Void)) {
        let alert = UIAlertController.init(title: title, message: message, preferredStyle: .alert)
        let okayAction = UIAlertAction.init(title: buttonTitle1, style: .default) { action in
            debugPrint("Okay aciton is pressed")
            buttonAction1()
        }
        let cancelAction = UIAlertAction.init(title: buttonTitle2, style: .cancel) { action in
            debugPrint("Cancel aciton is pressed")
            buttonAction2()
        }
        alert.addAction(okayAction)
        alert.addAction(cancelAction)
        alert.presentVC()
    }
    
}



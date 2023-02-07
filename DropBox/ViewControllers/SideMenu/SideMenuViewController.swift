//
//  SideMenuViewController.swift
//  DropBox
//
//  Created by Eng. Yahya M. Abu Musameh on 3/14/22.
//

import UIKit

class SideMenuViewController: UIViewController {
    
    @IBOutlet weak var viewProfileImage: UIView!
    @IBOutlet weak var tableView: UITableView!
    
    var objects: [GlobalConstants.Menu] = []
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
    
    @IBAction func btnDismiss(_ sender: Any) {
        self.navigationController?.popViewController(animated: false)
    }
    @IBAction func btnLogout(_ sender: Any) {
    }
}

extension SideMenuViewController {
    func setupView(){
        viewProfileImage.layer.cornerRadius = 53
        viewProfileImage.layer.maskedCorners = UserProfile.shared.isRTL ? [.layerMinXMaxYCorner] : [.layerMaxXMaxYCorner]
        tableView.registerXib(cell: MenuTableViewCell.self)
    }
    func localized(){
    }
    func setupData(){
        self.objects.removeAll()
        self.tableView.reloadData()
        self.objects.append(.home)
        self.objects.append(.profile)
        self.objects.append(.storage)
        self.objects.append(.shared)
        self.objects.append(.status)
        self.objects.append(.settings)
        self.objects.append(.help)
        self.tableView.reloadData()
    }
    func fetchData(){
    }
    
}

extension SideMenuViewController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.objects.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: MenuTableViewCell = tableView.dequeueReusableCell(withIdentifier: MenuTableViewCell.id , for: indexPath) as! MenuTableViewCell
        let obj = self.objects[indexPath.row]
        cell.object = obj
        cell.configerCell()
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let obj = self.objects[indexPath.row]
        self.navigationController?.popViewController(animated: false)
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
            switch obj {
            case .home:
                break
            case .profile:
                let vc = YourDribbboxViewController.storyboard_
                vc.push()
                break
            case .storage:
                let vc = StorageDetailsViewController.storyboard_
                vc.push()
                break
            case .shared:
                let vc = StorageViewController.storyboard_
                vc.push()
                break
            case .status:
                let vc = ChangePasswordViewController.storyboard_
                vc.push()
                break
            case .settings:
                break
            case .help:
                break
            }
        }
    }
    
    
}

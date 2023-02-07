//
//  MyProfileViewController.swift
//  DropBox
//
//  Created by Eng. Yahya M. Abu Musameh on 3/11/22.
//

import UIKit

class MyProfileViewController: UIViewController {
    
    @IBOutlet weak var proProfileCollectionView: UICollectionView!
    @IBOutlet weak var myFolderCollectionView: UICollectionView!
    @IBOutlet weak var myFolderConstraint: NSLayoutConstraint!
    @IBOutlet weak var recentUploadsTableView: UITableView!
    @IBOutlet weak var recentUploadsConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        localized()
        setupData()
        fetchData()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.isHideNavigation = false
    }
   
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        myFolderConstraint.constant = myFolderCollectionView.contentSize.height
        recentUploadsConstraint.constant = myFolderCollectionView.contentSize.height
    }
    
    @IBAction func btnSideMenu(_ sender: Any) {
        let vc = SideMenuViewController.storyboard_
        self.navigationController?.pushViewController(vc, animated: false)
    }
}

extension MyProfileViewController {
    func setupView(){
        proProfileCollectionView.register(UINib.init(nibName: "ProProfileCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "ProProfileCollectionViewCell")
        myFolderCollectionView.register(UINib.init(nibName: "FolderCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "FolderCollectionViewCell")
        recentUploadsTableView.register(UINib.init(nibName: "RecentUploadsTableViewCell", bundle: nil), forCellReuseIdentifier: "RecentUploadsTableViewCell")
    }
    func localized(){
        self.title = "My Profile"
    }
    func setupData(){
    }
    func fetchData(){
    }
}

extension MyProfileViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: RecentUploadsTableViewCell = tableView.dequeueReusableCell(withIdentifier: "RecentUploadsTableViewCell", for: indexPath) as! RecentUploadsTableViewCell
        return cell
    }
    
   
}
extension MyProfileViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == proProfileCollectionView {
            let cell: UICollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProProfileCollectionViewCell", for: indexPath) as! ProProfileCollectionViewCell
            return cell
        }else{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FolderCollectionViewCell", for: indexPath) as! FolderCollectionViewCell
            return cell
        }
    }
}

extension MyProfileViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == proProfileCollectionView {
            let width: CGFloat = collectionView.frame.width
            let height: CGFloat = collectionView.frame.height
            let size: CGSize = CGSize.init(width: width, height: height)
            return size
        } else  {
            let width: CGFloat = (collectionView.frame.width - 20) / 2
            let height: CGFloat = width * (107 / 148)
            let size: CGSize = CGSize.init(width: width, height: height)
            return size
        }
    }
}

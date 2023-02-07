//
//  StorageDetailsViewController.swift
//  DropBox
//
//  Created by Eng. Yahya M. Abu Musameh on 3/27/22.
//

import UIKit

class StorageDetailsViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
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
    
}

extension StorageDetailsViewController {
    func setupView(){
        tableView.registerXib(cell: StorageTableViewCell.self)
    }
    func localized(){
        self.title = "Storage Details"
    }
    func setupData(){
    }
    func fetchData(){
    }
}

extension StorageDetailsViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: StorageTableViewCell = tableView.dequeueReusableCell(withIdentifier: StorageTableViewCell.id, for: indexPath) as! StorageTableViewCell
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
}

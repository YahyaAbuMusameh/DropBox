//
//  StorageViewController.swift
//  DropBox
//
//  Created by Eng. Yahya M. Abu Musameh on 4/6/22.
//

import UIKit

class StorageViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var objects: [(header: Any, items:[Any])] = []
    
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

extension StorageViewController {
    func setupView(){
        tableView.registerXib(cell: StorageTableViewCell.self)
    }
    func localized(){
        self.title = "Storage"
    }
    func setupData(){
        objects.removeAll()
        tableView.reloadData()
        objects.append((header: "Internal Storage", items: ["Design Files", "Images", "Video"]))
        objects.append((header: "External Storage", items: ["Documents", "Others"]))
        tableView.reloadData()
    }
    func fetchData(){
    }
}
extension StorageViewController: UITableViewDelegate, UITableViewDataSource {

    func numberOfSections(in tableView: UITableView) -> Int {
        return objects.count
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let obj = objects[section]
        return obj.items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: StorageTableViewCell = tableView.dequeueReusableCell(withIdentifier: StorageTableViewCell.id, for: indexPath) as! StorageTableViewCell
        let obj = objects[indexPath.section].items[indexPath.row] as? String
        cell.object = obj
        cell.configerCell()
        return cell
    }
        
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = StorageHeader()
        let obj = objects[section].header as? String
        view.title = obj
        return view
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
    }
    
}

//
//  YourDribbboxViewController.swift
//  DropBox
//
//  Created by Eng. Yahya M. Abu Musameh on 3/30/22.
//

import UIKit

class YourDribbboxViewController: UIViewController {
    enum ViewType {
        case list
        case grid
    }
    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var btnList: UIButton!
    @IBOutlet weak var btnGrid: UIButton!
    
    var type: ViewType = .grid {
        didSet{
            updateUI()
        }
    }
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
    
    @IBAction func btnList(_ sender: Any) {
        self.type = .list
    }
    
    @IBAction func btnGrid(_ sender: Any) {
        self.type = .grid
    }
}

extension YourDribbboxViewController {
    func setupView(){
        collectionView.registerXib(cell: FolderCollectionViewCell.self)
        collectionView.registerXib(cell: FolderHorizentalCollectionViewCell.self)
        updateUI()
    }
    func localized(){
    }
    func setupData(){
    }
    func fetchData(){
    }
}
extension YourDribbboxViewController {
    func updateUI() {
        switch type {
        case .list:
            btnList.isSelected = true
            btnGrid.isSelected = false
            break
        case .grid:
            btnList.isSelected = false
            btnGrid.isSelected = true
            break
        }
        self.collectionView.reloadData()
    }
}
extension YourDribbboxViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch type {
        case .list:
            let cell: FolderHorizentalCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: FolderHorizentalCollectionViewCell.id, for: indexPath) as! FolderHorizentalCollectionViewCell
            return cell
        case .grid:
            let cell: FolderCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: FolderCollectionViewCell.id, for: indexPath) as! FolderCollectionViewCell
            return cell
        }
    }
}
            

extension YourDribbboxViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        switch type {
        case .list:
            let width: CGFloat = (collectionView.frame.width - 40)
            let height: CGFloat = 90
            let size: CGSize = CGSize.init(width: width, height: height)
            return size
        case .grid:
            let width: CGFloat = (collectionView.frame.width - 60) / 2
            let height: CGFloat = width * (107 / 148)
            let size: CGSize = CGSize.init(width: width, height: height)
            return size
        }
        
      

    }
    
}

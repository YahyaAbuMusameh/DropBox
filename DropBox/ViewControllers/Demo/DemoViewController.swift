//
//  DemoViewController.swift
//  DropBox
//
//  Created by Eng. Yahya M. Abu Musameh on 4/11/22.
//

import UIKit

class DemoViewController: UIViewController {
    
    @IBOutlet weak var btnDetail: UIButton!
    @IBOutlet weak var lblShowDetail: UILabel!
    
    @IBOutlet weak var btnCheckbox: UIButton!
    @IBOutlet weak var txtField: UITextField!
    
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
    @IBAction func btnDetail(_ sender: Any) {
        btnDetail.isSelected.toggle()
        if btnDetail.isSelected {
            lblShowDetail.isHidden = false
        }else{
            lblShowDetail.isHidden = true
        }
    }
    
    
    @IBAction func btnCheckbox(_ sender: Any) {

    }
        
    @IBAction func btntxtField(_ sender: Any) {
        if !validation() {
            return
        }
        btnCheckbox.isSelected = true
    }
}

extension DemoViewController {
    func setupView(){
        lblShowDetail.isHidden = true
    }
    func localized(){
    }
    func setupData(){
    }
    func fetchData(){
    }
}

extension DemoViewController {
    func validation() -> Bool {
        if txtField.text?.count ?? 0 <= 6 {
            return false
        }
       
        return true
    }

}

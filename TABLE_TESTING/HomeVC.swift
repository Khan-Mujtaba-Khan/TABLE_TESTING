//
//  HomeVC.swift
//  TABLE_TESTING
//
//  Created by MUJTABA KHAN on 22/08/2021.
//

import UIKit

class HomeVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    @IBAction func goBack(_ sender : Any){
        self.navigationController?.popViewController(animated: true)
    }

}

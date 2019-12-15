//
//  MainViewController.swift
//  appleLoginPractice
//
//  Created by richoh86 on 2019/12/15.
//  Copyright © 2019 richoh86. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var detailLabel: UILabel!
    
    var user: User?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        detailLabel.text = user?.debugDescription ?? ""
        print(user?.debugDescription)
     
    }

}

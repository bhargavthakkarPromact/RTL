//
//  ViewController.swift
//  RTL_iOS
//
//  Created by Bhargav Thakkar on 19/12/19.
//  Copyright © 2019 Bhargav Thakkar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblMessage: UILabel!
    @IBOutlet weak var btnMove: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.lblMessage.text = NSLocalizedString("lblHello", comment: "")
        self.btnMove.setTitle(NSLocalizedString("btnMove", comment: ""), for: .normal) 
        let lang = Locale.preferredLanguages[0]
        //Check for the current Language.
        if (lang == "ar") {
            self.lblMessage.textAlignment = .natural
        }
    }
}


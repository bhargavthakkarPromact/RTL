//
//  secondController.swift
//  RTL_iOS
//
//  Created by Bhargav Thakkar on 19/12/19.
//  Copyright © 2019 Bhargav Thakkar. All rights reserved.
//

import UIKit

class secondController: UIViewController {

    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var Back: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.Back.setTitle(NSLocalizedString("btnBack", comment: ""), for: .normal)
        // Do any additional setup after loading the view.
        self.txtName.textAlignment = .natural
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

//
//  TableCheckViewController.swift
//  RTL_iOS
//
//  Created by Bhargav Thakkar on 19/12/19.
//  Copyright © 2019 Bhargav Thakkar. All rights reserved.
//

import UIKit

class TableCheckViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    var arrString:[String] = [NSLocalizedString("btnMove", comment: ""),NSLocalizedString("btnMove", comment: "")];
    @IBOutlet weak var tblView: UITableView!
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrString.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "abcd")
        if cell == nil {
            cell = UITableViewCell(style: .default, reuseIdentifier: "abcd")
        }
        cell?.textLabel?.text = self.arrString[indexPath.row]
        return cell!
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tblView.delegate = self
        self.tblView.dataSource = self
        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(identifier: "secondController") as? secondController
        self.navigationController?.pushViewController(vc!, animated: true)
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

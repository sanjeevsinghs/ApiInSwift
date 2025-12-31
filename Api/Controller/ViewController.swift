//
//  ViewController.swift
//  Api
//
//  Created by bd01 on 29/12/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var tblView: UITableView!
    var viewUserModel = UserViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        viewUserModel.vc = self
        viewUserModel.getAllUserData()
        
        tblView.register(UINib(nibName: "UserCell", bundle: nil), forCellReuseIdentifier: "UserCell")
    }


}

extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        viewUserModel.arrUsers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "UserCell", for: indexPath) as! UserCell
        let modelUserCell = viewUserModel.arrUsers[indexPath.row]
        cell.lblID.text = "\(modelUserCell.id ?? 1)"
        cell.lblTitle.text = modelUserCell.title
//        cell.lblStatus.text = "\(modelUser.status)"
        return cell
    }
    
    
}

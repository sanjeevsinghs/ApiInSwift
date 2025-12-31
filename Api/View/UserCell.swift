//
//  UserCell.swift
//  Api
//
//  Created by bd01 on 29/12/25.
//

import UIKit

class UserCell: UITableViewCell {

    
    @IBOutlet var lblStatus: UILabel!
    @IBOutlet var lblTitle: UILabel!
    @IBOutlet var lblID: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

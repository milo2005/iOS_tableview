//
//  CustomTableViewCell.swift
//  TableView
//
//  Created by Aplimovil on 11/25/15.
//  Copyright © 2015 Aplimovil. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    @IBOutlet var title:UILabel!
    @IBOutlet var subtitle:UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

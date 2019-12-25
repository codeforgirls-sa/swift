//
//  TableViewCell.swift
//  Table View Demo
//
//  Created by Noura Aziz on 12/17/19.
//  Copyright © 2019 Noura Aziz. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var mealNameLabel: UILabel!
    @IBOutlet weak var mealDescriptionLabel: UILabel!
    @IBOutlet weak var mealImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

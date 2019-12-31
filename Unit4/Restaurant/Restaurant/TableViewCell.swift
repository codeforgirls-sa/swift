//
//  TableViewCell.swift
//  Restaurant
//
//  Created by Noura Aziz on 12/29/19.
//  Copyright © 2019 Noura Aziz. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

   
    @IBOutlet weak var itemImage: UIImageView!
    @IBOutlet weak var itemTitle: UILabel!
    @IBOutlet weak var itemDetails: UILabel!
    @IBOutlet weak var itemPrice: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

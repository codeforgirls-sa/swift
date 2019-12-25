//
//  SecondViewController.swift
//  Segue Demo
//
//  Created by Noura Aziz on 12/17/19.
//  Copyright © 2019 Noura Aziz. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    var name: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // update label text with value that came from first view
        nameLabel.text = name
    }
    

   

}

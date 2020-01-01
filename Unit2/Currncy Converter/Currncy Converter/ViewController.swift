//
//  ViewController.swift
//  Currncy Converter
//
//  Created by Noura Aziz on 12/28/19.
//  Copyright © 2019 Noura Aziz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var fromFlagImage: UIImageView!
    @IBOutlet weak var toFlagImage: UIImageView!
    @IBOutlet weak var fromValueTextField: UITextField!
    @IBOutlet weak var toValueLabel: UILabel!
    @IBOutlet weak var fromCurrencyLabel: UILabel!
    @IBOutlet weak var toCurrencyLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func convertButton(_ sender: Any) {
        let fromValue = Float(fromValueTextField.text ?? "0")
        let calculate = (fromValue ?? 0) * 3.75
        toValueLabel.text = "\(calculate)"
    }
    
}


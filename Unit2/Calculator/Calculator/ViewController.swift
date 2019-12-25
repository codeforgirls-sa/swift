//
//  ViewController.swift
//  Calculator
//
//  Created by Noura Aziz on 12/17/19.
//  Copyright © 2019 Noura Aziz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // textfields
    @IBOutlet weak var firstNumberText: UITextField!
    @IBOutlet weak var secondNumberText: UITextField!
    
    // buttons outlets
    @IBOutlet weak var addButtonOutlet: UIButton!
    @IBOutlet weak var subtractionButtonOutlet: UIButton!
    @IBOutlet weak var multiplicationButtonOutlet: UIButton!
    @IBOutlet weak var divisionButtonOutlet: UIButton!
    
    //output label
    @IBOutlet weak var outputLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func addButtonAction(_ sender: Any) {
        // set selection
        addButtonOutlet.isSelected = true
        subtractionButtonOutlet.isSelected = false
        multiplicationButtonOutlet.isSelected = false
        divisionButtonOutlet.isSelected = false
        
        let fNumber: Int = Int(firstNumberText.text!) ?? 0
        let sNumber: Int = Int(secondNumberText.text!) ?? 0
        let result = fNumber + sNumber
        outputLabel.text = "Output: \(result)"
        
    }
    
    @IBAction func subtractionButtonAction(_ sender: Any) {
        // set selection
        addButtonOutlet.isSelected = false
        subtractionButtonOutlet.isSelected = true
        multiplicationButtonOutlet.isSelected = false
        divisionButtonOutlet.isSelected = false
        
        let fNumber: Int = Int(firstNumberText.text!) ?? 0
        let sNumber: Int = Int(secondNumberText.text!) ?? 0
        let result = fNumber - sNumber
        outputLabel.text = "Output: \(result)"
    }
    
    @IBAction func multiplicationButtonAction(_ sender: Any) {
        // set selection
        addButtonOutlet.isSelected = false
        subtractionButtonOutlet.isSelected = false
        multiplicationButtonOutlet.isSelected = true
        divisionButtonOutlet.isSelected = false
        
        let fNumber: Int = Int(firstNumberText.text!) ?? 0
        let sNumber: Int = Int(secondNumberText.text!) ?? 0
        let result = fNumber * sNumber
        outputLabel.text = "Output: \(result)"
    }
    @IBAction func divisionButtonAction(_ sender: Any) {
        // set selection
        addButtonOutlet.isSelected = false
        subtractionButtonOutlet.isSelected = false
        multiplicationButtonOutlet.isSelected = false
        divisionButtonOutlet.isSelected = true
        
        let fNumber: Int = Int(firstNumberText.text!) ?? 0
        let sNumber: Int = Int(secondNumberText.text!) ?? 1
        let result = fNumber / sNumber
        outputLabel.text = "Output: \(result)"
    }
}


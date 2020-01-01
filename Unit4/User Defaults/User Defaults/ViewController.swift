//
//  ViewController.swift
//  User Defaults
//
//  Created by Noura Aziz on 12/31/19.
//  Copyright © 2019 Noura Aziz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var saveButton: UIButton!
    
    @IBOutlet weak var segmentControl: UISegmentedControl!
    var isDark: Bool?
    
    // User defaults
    let userDefault = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        saveButton.layer.borderWidth = 1
        saveButton.layer.borderColor = UIColor.lightGray.cgColor
        saveButton.layer.cornerRadius = 5
        
        // getting user defaults values
        let text = userDefault.string(forKey: "text")
        let isDarkUserDefaultValue = userDefault.bool(forKey: "isDark")
        
        print("Text: \(text ?? "")") // print text
        
        // check value of dark appearance
        if !isDarkUserDefaultValue {
            self.view.backgroundColor = .white
            self.segmentControl.selectedSegmentIndex = 0
        } else {
            self.view.backgroundColor = .darkGray
            self.segmentControl.selectedSegmentIndex = 1
        }
        
        
        
        
    }

    @IBAction func segmentControl(_ sender: UISegmentedControl) {
        // if user select dark segment, then change background color to dark gray.
        if sender.selectedSegmentIndex == 1 {
            self.view.backgroundColor = .darkGray
            isDark = true
        } else {
            self.view.backgroundColor = .white
            isDark = false
        }
    }
    
    @IBAction func saveButtonAction(_ sender: Any) {
        
        let text = textField.text
        // setting user defaults values
        userDefault.setValue(isDark, forKey: "isDark")
        userDefault.setValue(text, forKey: "text")
        
    }
}


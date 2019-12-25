//
//  EditProfileVC.swift
//  Profile
//
//  Created by Noura Aziz on 12/19/19.
//  Copyright © 2019 Noura Aziz. All rights reserved.
//

import UIKit

class EditProfileVC: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var bioTextField: UITextField!
    
    var name: String?
    var bio: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Assign values that carried by segue from "View Controller" to textfields
        self.nameTextField.text = self.name
        self.bioTextField.text = self.bio
    }
    
    @IBAction func saveButtonAction(_ sender: Any) {
        
        // Create alert view controller for changes confirmation
        let alert = UIAlertController(title: "Save Changes", message: "Are you sure you want to save changes?", preferredStyle: .alert)

        // "Yes" alert action
        alert.addAction(UIAlertAction(title: "Yes", style:.default, handler: {(_: UIAlertAction!) in
            // set user default data after confirming changes
            let userDefault = UserDefaults.standard
            userDefault.setValue(self.nameTextField.text, forKey: "name")
            userDefault.setValue(self.bioTextField.text, forKey: "bio")
           
            self.navigationController?.popViewController(animated: true) // move backward to parent view controller (ViewController)
        }))
        // Cancel alert action
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))

        // Present alert controller
        self.present(alert, animated: true)
        
    }

}

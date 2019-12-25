//
//  ViewController.swift
//  Segue Demo
//
//  Created by Noura Aziz on 12/17/19.
//  Copyright © 2019 Noura Aziz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // Function to pass data to next view.
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // To pass name text to second view
        if segue.identifier == "segue_id" {
            let secondVC = segue.destination as! SecondViewController // second view  object
            secondVC.name = nameTextField.text // update data in second view
        }
    }

    @IBAction func goButtonAction(_ sender: Any) {
        // to move to second view through the segue
        performSegue(withIdentifier: "segue_id", sender: nil)
    }
    
}


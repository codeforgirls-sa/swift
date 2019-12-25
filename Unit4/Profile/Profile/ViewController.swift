//
//  ViewController.swift
//  Profile
//
//  Created by Noura Aziz on 12/19/19.
//  Copyright © 2019 Noura Aziz. All rights reserved.
//

import UIKit
import Contacts

class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var bioLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        // get user default data after updating in EditProfileVC
        let userDefault = UserDefaults.standard
        let name = userDefault.string(forKey: "name")
        let bio = userDefault.string(forKey: "bio")
        
        if name != nil || bio != nil {
            nameLabel.text = name
            bioLabel.text = bio
        }
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // send data to EditProfileVC using segue
        if segue.identifier == "segue" {
            let secondVC = segue.destination as! EditProfileVC
            secondVC.name = nameLabel.text
            secondVC.bio = bioLabel.text
        }
    }

    @IBAction func editButtonAction(_ sender: Any) {
        // move to EditProfileVC view
        performSegue(withIdentifier: "segue", sender: nil)
    }
}


//
//  AddBookVC.swift
//  Book List
//
//  Created by Noura Aziz on 1/1/20.
//  Copyright © 2020 Noura Aziz. All rights reserved.
//

import UIKit

class AddBookVC: UIViewController {

    @IBOutlet weak var bookTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! ViewController
        vc.newBook = bookTextField.text ?? ""
    }


}

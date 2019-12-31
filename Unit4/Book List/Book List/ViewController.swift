//
//  ViewController.swift
//  Table View Demo
//
//  Created by Noura Aziz on 12/16/19.
//  Copyright © 2019 Noura Aziz. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
  
    @IBOutlet weak var tableView: UITableView!
    var books = ["حياة في الادارة", "Hoocked", "ثلاثية غرناطة"]
    var newBook = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.tableFooterView = UIView()
        
        
        // User defaults
        let userDefault = UserDefaults.standard
        
        // setting values
        userDefault.setValue("Sara", forKey: "name")
        userDefault.setValue(false, forKey: "flag")
        userDefault.setValue(20, forKey: "age")
        
        // getting values
        let name = userDefault.string(forKey: "name")
        let flag = userDefault.bool(forKey: "flag")
        let age = userDefault.integer(forKey: "age")
        
        
        print("\(name) \(age) \(flag)")
        
        
    }
    
    @IBAction func unwindToFirst(_ unwindSegue: UIStoryboardSegue) {
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if newBook != "" {
            books.append(newBook)
            tableView.reloadData()
            newBook = ""
        }
    }
    
    // Return the number of rows for table.
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return books.count
    }

    // Provide a cell object for each row
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // Fetch a cell of a predefined identifier and a custom cell class (TableViewCell).
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.text = books[indexPath.row]
        
        return cell!
    }
    
    // Handle cell selection evenets
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        // Print the selected row index
        print("Cell selected at index: \(indexPath.row)")
        
    }

    


}


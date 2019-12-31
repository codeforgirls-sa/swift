//
//  ViewController.swift
//  Restaurant
//
//  Created by Noura Aziz on 12/29/19.
//  Copyright © 2019 Noura Aziz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    let cakeNames: [String] = ["Croissants", "Eclairs", "Cheesecake", "Chocolate Croissants", "Donuts", "Chocolate Muffins", "Cookies", "Carrot Cake", "Cheesecake"]
    let cakeDescriptions: [String] = ["Classic butter Croissant", "Raspberry and milk chocolate Eclairs", "Gluten-free cheesecake with cherry", "Extra flaky chocolate croissants", "4pc set of mix Donuts", "Chocolate Muffins with hazelnuts chips", "Cookies with chocolate chips", "Filled with real cream cheese", "Classic creamy cheescake"]
    let cakePrices: [Float] = [4.00, 18.00, 16.50, 6.75, 30.0, 7.50, 4.0, 13.25, 14.0]
    let cakeImages = [
        UIImage(named: "croissants"),
        UIImage(named: "eclairs"),
        UIImage(named: "cheesecake"),
        UIImage(named: "chocolate-croissant"),
        UIImage(named: "dount"),
        UIImage(named: "muffins"),
        UIImage(named: "cookies"),
        UIImage(named: "CarrotCake"),
        UIImage(named: "cheesecake2")
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        
    }


}
extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cakeNames.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        cell.itemTitle.text = cakeNames[indexPath.row]
        cell.itemDetails.text = cakeDescriptions[indexPath.row]
        cell.itemPrice.text = "\(cakePrices[indexPath.row]) SAR"
        cell.itemImage.image = cakeImages[indexPath.row]
        cell.selectionStyle = .none
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}


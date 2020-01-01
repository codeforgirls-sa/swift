//
//  SecondViewController.swift
//  Personality Quiz
//
//  Created by Noura Aziz on 12/30/19.
//  Copyright © 2019 Noura Aziz. All rights reserved.
//

import UIKit

class SecondQuestionVC: UIViewController {
    
    @IBOutlet weak var firstChoiceButton: UIButton!
    @IBOutlet weak var secondChoiceButton: UIButton!
    @IBOutlet weak var thirdChoiceButton: UIButton!
    @IBOutlet weak var fourthChoiceButton: UIButton!
    
    var score = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("score: \(score)")
        
    }
    
    @IBAction func choiceButtonAction(_ sender: UIButton) {
        
        firstChoiceButton.isEnabled = false
        secondChoiceButton.isEnabled = false
        thirdChoiceButton.isEnabled = false
        fourthChoiceButton.isEnabled = false
        if sender.tag == 2 {
            sender.backgroundColor = .green
            score += 1
        } else {
            sender.backgroundColor = .red
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "second_segue" {
            let secondVC = segue.destination as! ThirdQuestionVC
            secondVC.score = score
        }
    }
    
    @IBAction func nextButtonAction(_ sender: Any) {
        self.performSegue(withIdentifier: "second_segue", sender: nil)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

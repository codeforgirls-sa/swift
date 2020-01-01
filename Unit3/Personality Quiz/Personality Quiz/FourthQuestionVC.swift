//
//  FourthQuestionVC.swift
//  Personality Quiz
//
//  Created by Noura Aziz on 12/31/19.
//  Copyright © 2019 Noura Aziz. All rights reserved.
//

import UIKit

class FourthQuestionVC: UIViewController {

    @IBOutlet weak var firstChoiceButton: UIButton!
    @IBOutlet weak var secondChoiceButton: UIButton!
    @IBOutlet weak var thirdChoiceButton: UIButton!
    @IBOutlet weak var fourthChoiceButton: UIButton!
    var score = 0
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
  
    
  
    @IBAction func choiceButtonAction(_ sender: UIButton) {
        if sender.tag == 1 {
            sender.backgroundColor = .green
            score += 1
        } else {
            sender.backgroundColor = .red
        }
        firstChoiceButton.isEnabled = false
        secondChoiceButton.isEnabled = false
        thirdChoiceButton.isEnabled = false
        fourthChoiceButton.isEnabled = false
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "score_segue" {
            let secondVC = segue.destination as! ScoresVC
            secondVC.score = score
        }
    }
    
    @IBAction func nextButtonAction(_ sender: Any) {
        self.performSegue(withIdentifier: "score_segue", sender: nil)
    }
   
}

//
//  ThirdQuestionVC.swift
//  Personality Quiz
//
//  Created by Noura Aziz on 12/30/19.
//  Copyright © 2019 Noura Aziz. All rights reserved.
//

import UIKit

class ThirdQuestionVC: UIViewController {

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
        if sender.tag == 2 {
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
        if segue.identifier == "third_segue" {
            let secondVC = segue.destination as! FourthQuestionVC
            secondVC.score = score
        }
    }
    
    @IBAction func nextButtonAction(_ sender: Any) {
        self.performSegue(withIdentifier: "third_segue", sender: nil)
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

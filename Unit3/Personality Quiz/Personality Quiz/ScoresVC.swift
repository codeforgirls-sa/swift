//
//  ScoresVC.swift
//  Personality Quiz
//
//  Created by Noura Aziz on 12/31/19.
//  Copyright © 2019 Noura Aziz. All rights reserved.
//

import UIKit

class ScoresVC: UIViewController {

    @IBOutlet weak var firstLabel: UILabel!
    
    @IBOutlet weak var secondLabel: UILabel!
    
    @IBOutlet weak var thirdLabel: UILabel!
    
    @IBOutlet weak var resultImage: UIImageView!
    
    var score = 0
    override func viewDidLoad() {
        super.viewDidLoad()

        if score >= 2 {
            firstLabel.text = "Congratulations"
            secondLabel.text = "You got \(score) scores!!"
            thirdLabel.text = "You Know Me Well ☺️!"
            resultImage.image = UIImage(named: "success (1)")
        } else {
            firstLabel.text = "GAME OVER!"
            secondLabel.text = "You got \(score) score :("
            thirdLabel.text = ""
            resultImage.image = UIImage(named: "sad")
        }
        
        
        
    }
    
    
    
    @IBAction func returnButton(_ sender: Any) {
        
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let vc: UIViewController = storyboard.instantiateViewController(withIdentifier: "FirstViewID") as! FirstQuestionVC
        self.present(vc, animated: true, completion: nil)
        
    }
    

}

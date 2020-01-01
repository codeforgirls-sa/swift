//
//  ViewController.swift
//  SystemViewController
//
//  Created by Noura Aziz on 1/1/20.
//  Copyright © 2020 Noura Aziz. All rights reserved.
//

import UIKit
import SafariServices
import MessageUI


class ViewController: UIViewController, MFMailComposeViewControllerDelegate {
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func shareButtonAction(_ sender: UIButton) {
        guard let image = imageView.image else { return }
        
        let activityController = UIActivityViewController(activityItems: [image], applicationActivities: nil)
        activityController.popoverPresentationController?.sourceView = sender
        
        present(activityController, animated: true, completion: nil)
    }
    
    @IBAction func safariButtonAction(_ sender: Any) {
        if let url = URL(string: "http://codeforgirls.org/") {
            let safariViewController = SFSafariViewController(url: url)
            present(safariViewController, animated: true, completion: nil)
        }
    }
    
    @IBAction func mailButtonAction(_ sender: Any) {
        guard MFMailComposeViewController.canSendMail() else {
            print("Can not send email")
            return
        }
        
        let mailComposer = MFMailComposeViewController()
        mailComposer.mailComposeDelegate = self
        
        mailComposer.setToRecipients(["example@example.com"])
        mailComposer.setSubject("Look at this")
        mailComposer.setMessageBody("Hello, this is an email from the app I made.", isHTML: false)
        present(mailComposer, animated: true, completion: nil)
    }
    
}


//
//  ViewController.swift
//  Postcard
//
//  Created by Steven Yanni on 2014-12-20.
//  Copyright (c) 2014 Steven Yanni. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var MessageLabel: UILabel!
    @IBOutlet weak var EnterNameTxt: UITextField!
    @IBOutlet weak var EnterMessageTxt: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: AnyObject) {
        
        MessageLabel.hidden = false
        MessageLabel.text = EnterMessageTxt.text
        // Adding a comment to test commits
        MessageLabel.textColor = UIColor.redColor()
        
        EnterMessageTxt.text = ""
        EnterMessageTxt.resignFirstResponder()
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        mailButton.backgroundColor = UIColor.blueColor()
    }

}


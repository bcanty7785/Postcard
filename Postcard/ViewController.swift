//
//  ViewController.swift
//  Postcard
//
//  Created by Brian Canty on 1/23/15.
//  Copyright (c) 2015 Brian Canty. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var MessageLabel: UILabel!
    @IBOutlet weak var EnterNameTextField: UITextField!
    @IBOutlet weak var EnterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMessageButtonPressed(sender: UIButton) {
        MessageLabel.hidden = false
        MessageLabel.text = EnterMessageTextField.text
        MessageLabel.textColor = UIColor.redColor()
        
        EnterMessageTextField.text = ""
        EnterMessageTextField.resignFirstResponder()
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }

}


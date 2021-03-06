//
//  SecondViewController.swift
//  Lesson02
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var numTextField: UITextField!
    @IBOutlet weak var sumLabel: UILabel!
    
    var sum = 0

    @IBAction func buttonAdd(sender: AnyObject) {
        if numTextField.text != nil && numTextField.text != "" {
            var numTextInt = numTextField.text!.toInt()!
            var sumTextInt = sumLabel.text!.toInt()!
            sum = numTextInt + sumTextInt
            sumLabel.text = String(sum)
            numTextField.text = ""
        }
    
    
    }
    //TODO five: Display the cumulative sum of all numbers added every time the ‘add’ button is pressed. Hook up the label, text box and button to make this work.

}
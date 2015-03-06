//
//  ThirdViewController.swift
//  Lesson02
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
/*
    TODO six: Hook up the number input text field, button and text label to this class. When the button is pressed, a message should be printed to the label indicating whether the number is even.

*/
    @IBAction func buttonEvenOdd(sender: AnyObject) {
        let num = textEvenOdd.text.toInt()
        
        var evenOddMultiple = num! % 2
        
        if evenOddMultiple == 0 {
            labelEvenOdd.text = "Even!"
        } else {
            labelEvenOdd.text = "Odd!"
        }

//      labelEvenOdd.text = inputValue
    }
    
    @IBOutlet weak var labelEvenOdd: UILabel!
    
    @IBOutlet weak var textEvenOdd: UITextField!
    
    
    
}

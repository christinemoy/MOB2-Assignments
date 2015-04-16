//
//  FirstViewController.swift
//  Lesson07
//
//  Created by Rudd Taylor on 9/30/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    @IBOutlet weak var textViewFirst: UITextView!
    
    let stringConstant = "teststring"
    let numberConstant = "testnumber"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let defaults = NSUserDefaults.standardUserDefaults()
        defaults.setObject("test_string", forKey: stringConstant)
        defaults.setObject("test_number", forKey: numberConstant)
        
        if let stringDefault = defaults.stringForKey(stringConstant)
        {
            if let numberDefault = defaults.stringForKey(numberConstant){
                textViewFirst.text = stringDefault + " " + numberDefault
            }

        }

    }
    
}
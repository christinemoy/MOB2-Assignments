
//
//  SixthViewController.swift
//  Lesson07
//
//  Created by Rudd Taylor on 9/30/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class SixthViewController: UIViewController {

    @IBOutlet weak var textViewSix: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        var textArray = NSArray(contentsOfURL: pathToFile!)
        var textShow = textArray! as! [String]
        println(textShow)
        var joinedArray = " ".join(textShow)
        println(joinedArray)
        textViewSix.text = joinedArray
        
    }
    
    var pathToFile : NSURL? {
        get {
            let filename = "fifthtodo.plist"
            
            let docDirectory = NSFileManager.defaultManager().URLsForDirectory(NSSearchPathDirectory.DocumentDirectory, inDomains: NSSearchPathDomainMask.UserDomainMask).last as! NSURL
            
            let url = docDirectory.URLByAppendingPathComponent(filename)
            
            return url
        }
    }
}

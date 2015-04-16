//
//  FourthViewController.swift
//  Lesson07
//
//  Created by Rudd Taylor on 9/30/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class FourthViewController: UIViewController {

    @IBOutlet weak var textViewFourth: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

            var textShow = String(contentsOfURL: pathToFile!, encoding: NSUTF8StringEncoding, error: nil)
                textViewFourth.text = textShow
    }
    
    var pathToFile: NSURL? {
        get {
            let filename = "thirdtodo.txt"
            
            let docDirectory = NSFileManager.defaultManager().URLsForDirectory(NSSearchPathDirectory.DocumentDirectory, inDomains: NSSearchPathDomainMask.UserDomainMask).last as! NSURL
            
            let url = docDirectory.URLByAppendingPathComponent(filename)
            
            println(url)
            return url
        }
    }
}

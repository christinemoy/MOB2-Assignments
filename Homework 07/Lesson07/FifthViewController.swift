//
//  FifthViewController.swift
//  Lesson07
//
//  Created by Rudd Taylor on 9/30/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class FifthViewController: UIViewController {
    
    @IBOutlet weak var textViewFive: UITextView!
    
    var pathToFile : NSURL? {
        get {
            let filename = "fifthtodo.plist"
            
            let docDirectory = NSFileManager.defaultManager().URLsForDirectory(NSSearchPathDirectory.DocumentDirectory, inDomains: NSSearchPathDomainMask.UserDomainMask).last as! NSURL
            
            let url = docDirectory.URLByAppendingPathComponent(filename)
            
            return url
        }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        var textInTextView = textViewFive.text
        
        var textToSave : Array = textInTextView.componentsSeparatedByString(" ")
        
        println(textToSave)
    
        (textToSave as NSArray).writeToURL(pathToFile!, atomically: true)
        
        println(pathToFile)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        


    }
}

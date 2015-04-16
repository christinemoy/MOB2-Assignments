//
//  ThirdViewController.swift
//  Lesson07
//
//  Created by Rudd Taylor on 9/30/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    
    var textToSave = ""
    
    var pathToFile : NSURL? {
        get {
            let filename = "thirdtodo.txt"
            
            let docDirectory = NSFileManager.defaultManager().URLsForDirectory(NSSearchPathDirectory.DocumentDirectory, inDomains: NSSearchPathDomainMask.UserDomainMask).last as! NSURL
            
            let url = docDirectory.URLByAppendingPathComponent(filename)
            
            return url
        }
    }

    
    @IBOutlet weak var textViewThird: UITextView!
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        textToSave = textViewThird.text
        
        println(textToSave)
        
        (textToSave as NSString).writeToURL(pathToFile!, atomically: true, encoding: NSUTF8StringEncoding, error: nil)
        
        println(pathToFile)
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    

    

}

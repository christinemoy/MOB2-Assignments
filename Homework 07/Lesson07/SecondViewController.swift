//
//  SecondViewController.swift
//  Lesson07
//
//  Created by Rudd Taylor on 9/30/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var textViewSecond: UITextView!
    
    @IBAction func showSettings(sender: AnyObject) {
        let settingsURL = UIApplicationOpenSettingsURLString
        
        UIApplication.sharedApplication().openURL(NSURL(string: settingsURL)!)
    }
    
    let settings = NSUserDefaults.standardUserDefaults()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateSettings()
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "updateSettings", name: NSUserDefaultsDidChangeNotification, object: nil)

    }
    
    func updateSettings(){
        if let settingsName = settings.stringForKey("settings_name") {
            if let settingsNumber = settings.stringForKey("settings_slider") {
        
        textViewSecond.text = settingsName + " " + settingsNumber
            }
        }
    }
    
}

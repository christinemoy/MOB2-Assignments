//
//  ViewController.swift
//  Lesson04
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class ArrayViewController: UIViewController, UITextFieldDelegate, UITableViewDelegate, UITableViewDataSource { //set delegate to class

    @IBOutlet weak var textInput: UITextField!
    
    @IBOutlet weak var tableViewOutlet: UITableView!
    
    var arrayOfStrings = [String]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textInput.delegate = self //set delegate
        tableViewOutlet.delegate = self
    
        
        /*
        TODO one: Add a table view AND a text input box to this view controller, either in code or via the storyboard. Accept keyboard input from the text view when the return key is pressed. Add the string that was entered into the text view (//correction: field?) into an array of strings (stored in this class).*/
        
        
        
        
      /*
        TODO two: Make this class a UITableViewDelegate and UITableViewDataSource that supply the above table view with cells. These cells should correspond to the text entered into the text box. E.g. If the text "one", then "two", then "three" was entered into the text box, there should be three cells in this table view that contain those strings in order.
        
        
        UI Text field delegate protocol
        */
    }
    
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        arrayOfStrings.append(textInput.text)
        textField.text = ""
        tableViewOutlet.reloadData()
        return false
        
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayOfStrings.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("inputCell", forIndexPath: indexPath) as UITableViewCell
        cell.textLabel?.text = arrayOfStrings[indexPath.row]
        return cell
    }
}


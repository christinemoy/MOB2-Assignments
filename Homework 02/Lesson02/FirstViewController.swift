//
//  FirstViewController.swift
//  Lesson02
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    /*
    TODO one: hook up a button in interface builder to a new function (to be written) in this class. Also hook up the label to this class. When the button is clicked, the function to be written must make a label say ‘hello world!’*/

    @IBOutlet weak var helloLabel: UILabel!
    
    @IBAction func buttonHelloWorld(sender: AnyObject) {
        ageAnalysis()
        if nameText.hasText() && ageText.hasText() {
            nameAgeUpdate()
        } else {
            helloWorld()
        }


    
    }

    func helloWorld(){
        helloLabel.text = ("Hello World.")
        

    }
    
  /*  TODO two: Connect the ‘name’ and ‘age’ text boxes to this class. Hook up the button to a NEW function (in addition to the function previously defined). That function must look at the string entered in the text box and print out “Hello {name}, you are {age} years old!” */
    
    @IBOutlet weak var nameText: UITextField!
    
    @IBOutlet weak var ageText: UITextField!
    
    func nameAgeUpdate(){
        var name = nameText.text
        var age = ageText.text

        helloLabel.text = "Hello \(name), you are \(age) years old!"
    }
    
    
   /*
    TODO three: Hook up the button to a NEW function (in addition to the two above). Print “You can drink” below the above text if the user is above 21. If they are above 18, print “you can vote”. If they are above 16, print “You can drive” */
//    
    @IBOutlet weak var ageTextLabel: UILabel!
    
    func ageAnalysis(){
        let age = ageText.text.toInt()
        
        if age >= 21 {
            ageTextLabel.text = "You can drink"
        } else if age >= 18 {
            ageTextLabel.text = "You can vote"
        } else if age >= 16 {
            ageTextLabel.text = "You can drive"
        } else {
            ageTextLabel.text = " "
        }
    }
    //how to make ageText a number value
    //how to add text with multiple functions
    
    /*
    TODO four: Hook up the button to a NEW function (in additino to the three above). Print “you can drive” if the user is above 16 but below 18. It should print “You can drive and vote” if the user is above 18 but below 21. If the user is above 21, it should print “you can drive, vote and drink (but not at the same time!”.
    */
    func ageAnalysisComplex(){
        let age = ageText.text.toInt()
        
        if age >= 21 {
            ageTextLabel.text = "You can drink"
        } else if age >= 18 {
            ageTextLabel.text = "You can vote"
        } else if age >= 16 {
            ageTextLabel.text = "You can drive"
        } else {
            ageTextLabel.text = " "
        }
    }

}

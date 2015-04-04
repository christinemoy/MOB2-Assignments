//
//  ViewController.swift
//  Calculator
//
//  Created by Christine Moy on 3/29/15.
//  Copyright (c) 2015 Christine Moy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var operandLabel: UILabel!
    
    @IBOutlet weak var answerFieldLabel: UILabel!
    
    @IBAction func allclearTapped(sender: AnyObject) {
        answerFieldLabel.text = "0"
    }
    
    @IBAction func clearScreenTapped(sender: AnyObject) {
        answerFieldLabel.text = "0"
    }
    
    @IBAction func digitTapped(sender: UIButton) {
        if let number = sender.titleLabel?.text {
        
        if isTypingNumber{
            answerFieldLabel.text = answerFieldLabel!.text! + number
        } else {
            answerFieldLabel.text = number
            isTypingNumber = true
        }
        }
    }
    
    @IBAction func operationTapped(sender: AnyObject) {
        isTypingNumber = false
        firstNumber = answerFieldLabel.text!.toInt()!
        operation = sender.currentTitle!!

    }
        
    
    @IBAction func equalTapped(sender: AnyObject) {
        isTypingNumber = false
        var result = 0
        secondNumber = answerFieldLabel.text!.toInt()!
        
        if operation == "+"{
            result = firstNumber + secondNumber
        } else if operation == "-" {
            result = firstNumber - secondNumber
        } else if operation == "/" {
            result = firstNumber / secondNumber
        } else if operation == "x" {
            result = firstNumber * secondNumber
        }
        
        answerFieldLabel.text = "\(result)"
    }
    
    var isTypingNumber = false
    
    var firstNumber = 0
    
    var secondNumber = 0
    
    var operation = ""
    


}


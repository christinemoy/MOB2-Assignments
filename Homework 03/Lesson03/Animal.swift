//
//  Animal.swift
//  Lesson03
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class Animal: NSObject {
    let name: String
    
    init(name: String) {
        self.name = name
    }
    
    func prettyAnimalName() -> String {
        return "Animal name: " + self.name
    }
}

class Dog: Animal {
    var anotherName : String = "Jack"
    
    override func prettyAnimalName() -> String {
        return "Dog name: " + self.anotherName
    }
}

var aDog = Dog(name: " ")

//why doesn't this line above redefine the name of the aDog to something other than Jack?

class Cat: Animal {
    var anotherCatName : String = "Jill"
    
    override func prettyAnimalName() -> String {
        return "Cat name: " + self.anotherCatName
    }
}

var aCat = Cat(name: " ")

//why doesn't this line above redefine the name of the aCat to something other than Jill?
//
//  Person.swift
//  Zorg Cafe
//
//  Created by Sander Geraedts on 04/10/15.
//  Copyright © 2015 Codepanda. All rights reserved.
//

import Foundation

class Person{
    
    //properties
    var personId : Int
    var name : String
    //var avatar : image
    var caregiver : Bool
    var phoneNumber : String
    var groups : [Group]?
    
    //constructor
    init(personId : Int, name: String, caregiver : Bool, phoneNumber : String, groups : [Group]?)
    {
        self.personId = personId
        self.name = name
        self.caregiver = caregiver
        self.phoneNumber = phoneNumber
        self.groups = groups
    }
}
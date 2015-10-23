//
//  Person.swift
//  Zorg Cafe
//
//  Created by Sander Geraedts on 04/10/15.
//  Copyright © 2015 Codepanda. All rights reserved.
//

import Foundation
import UIKit

class Person{
    
    //properties
    var id : Int
    var name : String
    var avatar : UIImage?
    var caregiver : Bool
    var phoneNumber : String
    var groups : [Group]?
    
    //constructor
    /**
    Person: Represents the users of the app
    
    - parameter id:          The unique identifier
    - parameter name:        The name of the person
    - parameter avatar:      [OPTIONAL] An avatar to represent the person
    - parameter caregiver:   Boolean to see if the person is a caregiver or not
    - parameter phoneNumber: The phonenumber of the user. Won't be used in the first prototype, but might be used later to call someone through our app. (Similiar to What'sApp)
    - parameter groups:      An array of groups which the user is currently part of.
    
    - returns: Returns the initialized Person
    */
    init(id : Int, name: String, avatar: UIImage?, caregiver : Bool, phoneNumber : String, groups : [Group]?)
    {
        self.id = id
        self.name = name
        self.avatar = avatar
        self.caregiver = caregiver
        self.phoneNumber = phoneNumber
        self.groups = groups
    }
    
    /**
    Creates a group and makes this user admin of said group. Still needs implementation
    */
    func CreateGroup()
    {
        
    }
    
}
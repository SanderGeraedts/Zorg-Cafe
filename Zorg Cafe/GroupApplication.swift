//
//  GroupApplication.swift
//  Zorg Cafe
//
//  Created by Sander Geraedts on 04/10/15.
//  Copyright © 2015 Codepanda. All rights reserved.
//

import Foundation

class GroupApplication{
    
    //properties
    var id : Int
    var user : Person
    var group : Group
    
    /**
    GroupApplication: Let user apply to join a group
    
    - parameter id:    The unique identifier
    - parameter user:  The user who wishes to join the group
    - parameter group: The group which the user wants to join
    
    - returns: returns the initialized group
    */
    init(id : Int, user : Person, group : Group){
        self.id = id
        self.user = user
        self.group = group
    }
    
    //Methodes
    
    /**
    Accepts user into group. Still needs implementation
    */
    func Accept()
    {
        
    }
    
    /**
    Denies user access to group. Still needs implementation
    */
    func Deny()
    {
        
    }
}
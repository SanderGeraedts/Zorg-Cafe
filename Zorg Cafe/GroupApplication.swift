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
    
    //constructor
    init(id : Int, user : Person, group : Group){
        self.id = id
        self.user = user
        self.group = group
    }
}
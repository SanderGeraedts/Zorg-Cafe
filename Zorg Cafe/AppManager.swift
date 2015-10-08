//
//  AppManager.swift
//  Zorg Cafe
//
//  Created by Sander Geraedts on 04/10/15.
//  Copyright © 2015 Codepanda. All rights reserved.
//

import Foundation

class AppManager{
    
    //properties
    var id : Int
    var user : Person
    var currentGroup : Group?
    
    //constructor
    init(id : Int, user : Person, currentGroup : Group?){
        self.id = id
        self.user = user
        self.currentGroup = currentGroup
    }
}

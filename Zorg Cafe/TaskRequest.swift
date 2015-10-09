//
//  TaskRequest.swift
//  Zorg Cafe
//
//  Created by Sander Geraedts on 04/10/15.
//  Copyright © 2015 Codepanda. All rights reserved.
//

import Foundation

class TaskRequest{
    
    //properties
    var accepted : Bool?
    var task : Task
    
    //constructor
    init(accepted : Bool?, task : Task){
        self.accepted = accepted
        self.task = task
    }
}
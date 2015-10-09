//
//  Task.swift
//  Zorg Cafe
//
//  Created by Sander Geraedts on 04/10/15.
//  Copyright © 2015 Codepanda. All rights reserved.
//

import Foundation

class Task{
    
    //properties
    var description : String
    var deadline : Date
    var photos : [String]?
    var finished : Bool
    
    var requests : [TaskRequest]?
    
    //constructor
    init(description : String, deadline : Date, photos : [String], finished : Bool, requests : [TaskRequest]?){
        self.description = description
        self.deadline = deadline
        self.photos = photos
        self.finished = finished
        self.requests = requests
    }
}
//
//  Task.swift
//  Zorg Cafe
//
//  Created by Sander Geraedts on 04/10/15.
//  Copyright © 2015 Codepanda. All rights reserved.
//

import Foundation
import UIKit

class Task{
    
    //properties
    var description : String
    var deadline : Date?
    var photos : [UIImage]?
    var finished : Bool
    
    var requests : [TaskRequest]?
    
    //constructor
    /**
    Represents a Task
    
    - parameter description: The task description. Can't be nil
    - parameter deadline:    Can be nil
    - parameter photos:      An array of UIImages to explain the task. Can be nil
    - parameter finished:    A boolean to represent whether the task is finished or not. Can't be nil
    - parameter requests:    An array of TaskRequests. Can be nil
    
    - returns: Returns the initialized Task
    */
    init(description : String, deadline : Date?, photos : [UIImage]?, finished : Bool, requests : [TaskRequest]?){
        self.description = description
        self.deadline = deadline
        self.photos = photos
        self.finished = finished
        self.requests = requests
    }
    
    //Methodes
    func AssignTo(person : Person)
    {
        
    }
    
    func AssignTo(person: [Person])
    {
        
    }
}
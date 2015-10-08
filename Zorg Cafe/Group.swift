//
//  Group.swift
//  Zorg Cafe
//
//  Created by Sander Geraedts on 04/10/15.
//  Copyright © 2015 Codepanda. All rights reserved.
//

import Foundation

class Group{
    //properties
    var id : Int
    var avatarUrl : String
    
    var admin : Person
    var patient : Person
    var caregivers : [Person]
    
    var photoDiary : PhotoDiary
    var visitManager : VisitManager
    var taskManager : TaskManager
    
    //constructor
    init(id : Int, avatarUrl : String, admin : Person, patient : Person)
    {
        self.id = id
        self.avatarUrl = avatarUrl
        
        self.admin = admin
        self.patient = patient
        self.caregivers = [Person]()
        
        self.photoDiary = PhotoDiary()
        self.visitManager = VisitManager()
        self.taskManager = TaskManager()
    }
}
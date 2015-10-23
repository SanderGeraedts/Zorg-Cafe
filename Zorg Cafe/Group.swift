//
//  Group.swift
//  Zorg Cafe
//
//  Created by Sander Geraedts on 04/10/15.
//  Copyright © 2015 Codepanda. All rights reserved.
//
//  To do:
//  Still needs further implementation

import Foundation
import UIKit

class Group{
    
    //properties
    var id : Int
    var avatar : UIImage
    
    var admin : Person
    var patient : Person
    var caregivers : [Person]
    
    var photoDiary : PhotoDiary?
    var visitManager : VisitManager?
    var taskManager : TaskManager?
    
    /**
    Group: represents a group of people taking care of an old or sickly person
    
    TODO: Further implementation of methods and managers
    
    - parameter id:        The unique indentifier
    - parameter avatarUrl: An avatar to represent the group, making it easily recognizable.
    - parameter admin:     The person who's monitoring the group
    - parameter patient:   The person who's in need of caretaking, might not be used
    
    - returns: Returns the initialized Group.
    */
    init(id : Int, avatar : UIImage, admin : Person, patient : Person)
    {
        self.id = id
        self.avatar = avatar
        
        self.admin = admin
        self.patient = patient
        self.caregivers = [Person]()
        
        //self.photoDiary = PhotoDiary()
        //self.visitManager = VisitManager()
        //self.taskManager = TaskManager()
    }
    
    //Methodes
    
    /**
    Let a person apply to join the group. A GroupApplication will be created and sent to the admin.
    
    - parameter person: The person which would like to join the group
    */
    func JoinGroup(person: Person)
    {
        
    }
    
    /**
    Allows person to leave this group
    
    - parameter person: The person who's leaving
    */
    func LeaveGroup(person: Person)
    {
        
    }
    
}
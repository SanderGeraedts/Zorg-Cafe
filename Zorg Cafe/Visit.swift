//
//  Visit.swift
//  Zorg Cafe
//
//  Created by Sander Geraedts on 04/10/15.
//  Copyright © 2015 Codepanda. All rights reserved.
//

import Foundation

class Visit : AgendaItem {
    
    //properties
    var visitors : [Person]
    
    //constructor
    init(startTime : DateTime, endTime : DateTime, visitors : [Person])
    {
        self.visitors = visitors
        super.init(startTime: startTime, endTime: endTime)
    }
    
    func Join(person : Person)
    {
        
    }
}
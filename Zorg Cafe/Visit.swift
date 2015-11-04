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
    var visitors : String
    
    //constructor
    init(startTime : DateTime, endTime : DateTime, visitors : String)
    {
        self.visitors = visitors
        super.init(startTime: startTime, endTime: endTime)
    }
    
    func Join(person : Person)
    {
        
    }
}
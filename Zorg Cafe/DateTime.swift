//
//  DateTime.swift
//  Zorg Cafe
//
//  Created by Sander Geraedts on 09/10/15.
//  Copyright © 2015 Codepanda. All rights reserved.
//

import Foundation

class Date{
    
    //properties
    var day : Int
    var month : Int
    var year : Int
    
    //constructor
    init(day : Int, month : Int, year : Int)
    {
        self.day = day
        self.month = month
        self.year = year
    }
    
    //methods
    func ToString() -> String{
        return "\(self.day)/\(self.month)/\(self.year)"
    }
}

class Time{
    
    //properties
    var hour : Int
    var minute : Int
    
    //constructor
    init(hour : Int, minute : Int){
        self.hour = hour
        self.minute = minute
    }
    
    //methods
    func ToString() -> String{
        return "\(self.hour):\(self.minute)"
    }
}

class DateTime{
    
    //properties
    var date : Date
    var time : Time
    
    //constructor
    init(day : Int, month : Int, year : Int, hour : Int, minute : Int)
    {
        self.date = Date(day: day, month: month, year: year)
        self.time = Time(hour: hour, minute: minute)
    }
    
    //methods
    func ToString() -> String{
        return "\(self.date.ToString()) \(self.time.ToString())"
    }
}
//
//  DateTime.swift
//  Zorg Cafe
//
//  Created by Sander Geraedts on 09/10/15.
//  Copyright © 2015 Codepanda. All rights reserved.
//

import Foundation

enum Days{
    
    case Monday
    case Tuesday
    case Wednesday
    case Thursday
    case Friday
    case Saturday
    case Sunday
}

class Date{
    
    //properties
    var day : Int
    var month : Int
    var year : Int
    
    //constructor currentDate
    init(){
        
        let nsDate = NSDate()
        let formatter = NSDateFormatter()
        formatter.dateFormat = "dd/MM/yyyy"
        
        let dateString = formatter.stringFromDate(nsDate)
        
        let dayString = dateString.substringWithRange(Range(start: dateString.startIndex, end: dateString.startIndex.advancedBy(2)))
        let monthString = dateString.substringWithRange(Range(start: dateString.startIndex.advancedBy(3), end: dateString.startIndex.advancedBy(5)))
        let yearString = dateString.substringWithRange(Range(start: dateString.endIndex.advancedBy(-4), end: dateString.endIndex))
        
        self.day = Int(dayString)!
        self.month = Int(monthString)!
        self.year = Int(yearString)!
    }
    
    //constructor
    init(day : Int, month : Int, year : Int)
    {
        self.day = day
        self.month = month
        self.year = year
    }
    
    //methods
    private func IntToDay(day : Int) -> Days?{
        if(day == 1){
            return Days.Sunday
        }
        else if(day == 2){
            return Days.Monday
        }
        else if(day == 3){
            return Days.Tuesday
        }
        else if(day == 4){
            return Days.Wednesday
        }
        else if(day == 5){
            return Days.Thursday
        }
        else if(day == 6){
            return Days.Friday
        }
        else if(day == 7){
            return Days.Saturday
        }
        else{
            return nil
        }
    }
    
    private func DayToString(weekday : Days!) -> String{
        if(weekday == Days.Monday){
            return "Maandag"
        }
        else if(weekday == Days.Tuesday){
            return "Dinsdag"
        }
        else if(weekday == Days.Wednesday){
            return "Woensdag"
        }
        else if(weekday == Days.Thursday){
            return "Donderdag"
        }
        else if(weekday == Days.Friday){
            return "Vrijdag"
        }
        else if(weekday == Days.Saturday){
            return "Zaterdag"
        }
        else if(weekday == Days.Sunday){
            return "Zondag"
        }
        else{
            return "Bad input"
        }
    }
    
    private func MonthToString() -> String{
        if(self.month == 1){
            return "januari"
        }
        else if(self.month == 2){
            return "februari"
        }
        else if(self.month == 3){
            return "maart"
        }
        else if(self.month == 4){
            return "april"
        }
        else if(self.month == 5){
            return "mei"
        }
        else if(self.month == 6){
            return "juni"
        }
        else if(self.month == 7){
            return "juli"
        }
        else if(self.month == 8){
            return "augustus"
        }
        else if(self.month == 9){
            return "september"
        }
        else if(self.month == 10){
            return "oktober"
        }
        else if(self.month == 11){
            return "november"
        }
        else if(self.month == 12){
            return "december"
        }
        else{
            return "Bad input"
        }
    }
    
    private func Day() -> Days?{
        let formatter = NSDateFormatter()
        formatter.dateFormat = "dd/MM/yyyy"
        if let returnDate = formatter.dateFromString(self.ToString()) {
            let myCalendar = NSCalendar(calendarIdentifier: NSCalendarIdentifierGregorian)!
            let myComponents = myCalendar.components(NSCalendarUnit.Weekday, fromDate: returnDate)
            let weekDay = myComponents.weekday
            return IntToDay(weekDay);
        } else {
            return nil
        }
    }
    
    func ToString() -> String{
        var day = String(self.day)
        var month = String(self.month)
        
        if(day.characters.count == 1){
            day = "0" + day
        }
        if(month.characters.count == 1){
            month = "0" + month
        }
        
        return "\(day)/\(month)/\(self.year)"
    }
    
    func ToSpokenDate() -> String{
        let day = DayToString(Day()!)
        let month = MonthToString()
        
        return "\(day) \(self.day) \(month)"
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
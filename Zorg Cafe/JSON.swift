//
//  JSON.swift
//  Zorg Cafe
//
//  Created by Fhict on 04/11/15.
//  Copyright © 2015 Codepanda. All rights reserved.
//

import Foundation

class VisitLoader {
    
    init(){
        
    }
    
    func loadJsonData() -> [Visit]
    {
        var visits = [Visit]()
        
        let url = NSURL(string: "http://athena.fhict.nl/users/i329101/visitors.json")
        let request = NSURLRequest(URL: url!)
        let session = NSURLSession.sharedSession()
        let dataTask = session.dataTaskWithRequest(request) { (data, response, error) -> Void in
            do
            {
                if let jsonObject: AnyObject = try NSJSONSerialization.JSONObjectWithData(data!, options: NSJSONReadingOptions.AllowFragments)
                {
                    visits = self.parseJsonData(jsonObject)
                }
            }
            catch
            {
                print(error)
            }
        }
        dataTask.resume();
        return visits
    }
    
    // JSON DATA parsen
    func parseJsonData(jsonObject:AnyObject) -> [Visit]
    {
        var visits = [Visit]()
        
        if let jsonData = jsonObject as? NSArray
        {
            for item in jsonData
            {
                let startTime = DateTime(
                    day: Int(item.objectForKey("day") as! String)!,
                    month: Int(item.objectForKey("month") as! String)!,
                    year: Int(item.objectForKey("year") as! String)!,
                    hour: Int(item.objectForKey("hourStart") as! String)!,
                    minute: Int(item.objectForKey("minStart") as! String)!
                )
                
                let endTime = DateTime(
                    day: Int(item.objectForKey("day") as! String)!,
                    month: Int(item.objectForKey("month") as! String)!,
                    year: Int(item.objectForKey("year") as! String)!,
                    hour: Int(item.objectForKey("hourEnd") as! String)!,
                    minute: Int(item.objectForKey("minEnd") as! String)!
                )
                
                let visit = Visit(
                    startTime: startTime,
                    endTime: endTime,
                    visitors: item.objectForKey("minStart") as! String
                )
                
                visits.append(visit)
            }
        }
        
        return visits
    }

}
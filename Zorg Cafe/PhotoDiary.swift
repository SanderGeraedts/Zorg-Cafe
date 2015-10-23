//
//  PhotoDiary.swift
//  Zorg Cafe
//
//  Created by Sander Geraedts on 04/10/15.
//  Copyright © 2015 Codepanda. All rights reserved.
//

import Foundation

class PhotoDiary{
    
    //properties
    var id : Int
    var items : [DiaryItem]
    
    //constructor
    /**
    PhotoDiary: Manages the backend of the viewPhotoDiary stack. Contains all photos of the Group
    
    - parameter id:    A unique identifier. Can't be nil
    - parameter items: An array of DiaryItems. Can be nil
    
    - returns: returns the initialized PhotoDiary
    */
    init(id : Int, items : [DiaryItem]?){
        self.id = id
        
        if(items != nil){
            self.items = items!
        }
        else{
            self.items = [DiaryItem]()
        }
        
    }
    
    //methods
    
    /**
    Adds a DiaryItem to the PhotoDiary
    
    - parameter item: An DiaryItem with a new picture
    */
    func Add(item : DiaryItem){
        items.append(item)
    }
    
    /**
    Removes a DiaryItem from the PhotoDiary
    
    - parameter item: <#item description#>
    */
    func Remove(item : DiaryItem){
        for(var i = 0; i < items.count; i++){
            if(self.items[i].id == item.id){
                self.items.removeAtIndex(i)
            }
        }
    }
}
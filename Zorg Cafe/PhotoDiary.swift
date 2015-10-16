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
    func Add(item : DiaryItem){
        items.append(item)
    }
    
    func Remove(item : DiaryItem){
        for(var i = 0; i < items.count; i++){
            if(self.items[i].id == item.id){
                self.items.removeAtIndex(i)
            }
        }
    }
    
    func AddItem(item: DiaryItem)
    {
        
    }
    
    func RemoveItem(item: DiaryItem)
    {
        
    }
}
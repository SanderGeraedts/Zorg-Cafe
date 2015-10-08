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
    var items : [DiaryItem]?
    
    //constructor
    init(id : Int, items : [DiaryItem]?){
        self.id = id
        self.items = items
    }
}
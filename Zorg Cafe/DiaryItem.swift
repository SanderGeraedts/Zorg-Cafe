//
//  DiaryItem.swift
//  Zorg Cafe
//
//  Created by Sander Geraedts on 04/10/15.
//  Copyright © 2015 Codepanda. All rights reserved.
//

import Foundation

class DiaryItem{
    
    //properties
    var id : Int
    var imageUrl : String
    var text : String
    
    var uploader : Person
    
    //constructor
    init(id : Int, imageUrl : String, text : String, uploader : Person){
        self.id = id
        self.imageUrl = imageUrl
        self.text = text
        
        self.uploader = uploader
    }
}
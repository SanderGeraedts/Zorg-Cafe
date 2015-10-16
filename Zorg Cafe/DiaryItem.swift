//
//  DiaryItem.swift
//  Zorg Cafe
//
//  Created by Sander Geraedts on 04/10/15.
//  Copyright © 2015 Codepanda. All rights reserved.
//

import Foundation
import UIKit

class DiaryItem{
    
    //properties
    var id : Int
    var image : UIImage
    var text : String
    
    var uploader : Person
    
    //constructor
    init(id : Int, image : UIImage, text : String, uploader : Person){
        self.id = id
        self.image = image
        self.text = text
        
        self.uploader = uploader
    }
}
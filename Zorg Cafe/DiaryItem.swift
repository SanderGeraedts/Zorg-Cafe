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
    var text : String?
    
    var date : Date
    var uploader : Person
    
    //constructor
    /**
    DiaryItem: One photo in our photo diary
    
    - parameter id:       A unique identifier. Can't be nil
    - parameter image:    The photo. Can't be nil
    - parameter text:     The text that the uploader has posted as comment on the photo. Can be nil
    - parameter date:     The date on which this photo was uploaded. Can't be nil
    - parameter uploader: The person who uploaded the photo. Can't be nil
    
    - returns: Returns the initialized DiaryItem
    */
    init(id : Int, image : UIImage, text : String?, date : Date, uploader : Person){
        self.id = id
        self.image = image
        self.text = text
        
        self.date = date
        self.uploader = uploader
    }
}
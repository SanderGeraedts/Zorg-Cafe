//
//  viewNewDiaryItem.swift
//  Zorg Cafe
//
//  Created by Fhict on 23/10/15.
//  Copyright © 2015 Codepanda. All rights reserved.
//

import UIKit

class viewNewDiaryItem: UIViewController {

    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var txtDescription: UITextField!
    
    var image = UIImage()
    var photoDiary = PhotoDiary(id: 1, items: [DiaryItem]())
    var maincontroller = viewPhotoDiary()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.imgView.image = self.image
        self.title = Date().ToSpokenDate()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func addImage(sender: AnyObject) {
        
        //new diary item
        let id = photoDiary.items.count
        let diaryItem = DiaryItem(id: id, image: self.image, text: txtDescription.text!, date: Date(), uploader: Person(id: 1, name: "Sander Geraedts", avatar: UIImage(),caregiver: true, phoneNumber: "06-23775102", groups: nil))
        
        //add to photoDiary
        photoDiary.items.append(diaryItem)
        
        //give back to main controller
        maincontroller.photoDiary = self.photoDiary
        
        //go back to maincontroller
        self.maincontroller.loadView()
        self.navigationController?.popToViewController(maincontroller, animated: true)
        self.dismissViewControllerAnimated(true, completion: nil)
        
    }
}

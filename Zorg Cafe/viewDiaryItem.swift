//
//  viewDiaryItem.swift
//  Zorg Cafe
//
//  Created by Sander Geraedts on 23/10/15.
//  Copyright © 2015 Codepanda. All rights reserved.
//

import UIKit

class viewDiaryItem: UIViewController {

    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var lblText: UILabel!
    @IBOutlet weak var lblMadeBy: UILabel!
    
    var diaryItem = DiaryItem(id: 1, image: UIImage(), text: "", date: Date(), uploader: Person(id: 1, name: "", avatar: UIImage(), caregiver: false, phoneNumber: "", groups: nil))
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.imgView.image = diaryItem.image
        self.lblText.text = diaryItem.text
        self.lblMadeBy.text = "Gemaakt door: " + diaryItem.uploader.name
        
        self.lblText.sizeToFit()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

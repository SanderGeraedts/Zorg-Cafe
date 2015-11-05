//
//  viewPhotoDiary.swift
//  Zorg Cafe
//
//  Created by Sander Geraedts on 23/10/15.
//  Copyright © 2015 Codepanda. All rights reserved.
//

import UIKit

private let reuseIdentifier = "diaryItem"

class viewPhotoDiary: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate, UICollectionViewDelegate, UICollectionViewDataSource {
    
    var photoDiary = PhotoDiary(id: 1, items: nil)
    var newImage = UIImage()

    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Register cell classes
        self.collectionView!.registerClass(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return self.photoDiary.items.count
        
    }
    
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        //create the cell
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(reuseIdentifier, forIndexPath: indexPath) as! cellPhotoDiary
        
        //newest items first
        var reversed = [DiaryItem]()
        
        for var i = photoDiary.items.count - 1; i >= 0; i--
        {
            reversed.append(photoDiary.items[i])
        }
        
        //retrieve data
        let date = reversed[indexPath.row].date.ToSpokenDate()
        let image = reversed[indexPath.row].image
        let text = reversed[indexPath.row].text
        
        //populate cell
        cell.lblDate.text = date
        cell.imgView.image = image
        cell.lblText.text = text
        
        //returns the cell
        return cell
    }
    
    //performs segue when cell is selected
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        
        self.performSegueWithIdentifier("showImage", sender: self)
        
    }

    @IBAction func AddImage(sender: AnyObject) {
        let imageFromSource = UIImagePickerController()
        imageFromSource.delegate = self
        
        //checks if the camera is available, else uses the photoroll
        if(UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.Camera)){
            
            imageFromSource.sourceType = UIImagePickerControllerSourceType.Camera
            
        }
        else{
            
            imageFromSource.sourceType = UIImagePickerControllerSourceType.PhotoLibrary
            
        }
        
        self.presentViewController(imageFromSource, animated: true, completion: nil)
        
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        
        //sets newImage as the made/chosen image
        self.newImage = info[UIImagePickerControllerOriginalImage] as! UIImage
        
        self.performSegueWithIdentifier("addImage", sender: self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if(segue.identifier == "showImage"){
            
            //get all index paths that are selected (should only be 1)
            let indexPaths = self.collectionView!.indexPathsForSelectedItems()!
            
            //get first (and only) index path of the array
            let indexPath = indexPaths[0] as NSIndexPath
            
            //defines the new view controller as a view controller of the type NewViewController
            let viewController = segue.destinationViewController as! viewDiaryItem
            
            //populate the view controller
            viewController.diaryItem = photoDiary.items[photoDiary.items.count - (indexPath.row + 1)]
            
            
            //dismiss the current viewcontroller
            self.dismissViewControllerAnimated(true, completion: nil)
            
        }
        
        if(segue.identifier == "addImage"){
            
            //defines the new view controller as a view controller of the type
            let viewController = segue.destinationViewController as! viewNewDiaryItem
            
            //populate the view controller
            viewController.image = self.newImage
            viewController.photoDiary = self.photoDiary
            viewController.maincontroller = self
            
            //dismiss the current viewcontroller
            self.dismissViewControllerAnimated(false, completion: nil)
        }
    }
}

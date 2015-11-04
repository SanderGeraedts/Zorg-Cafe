//
//  viewVisits.swift
//  Zorg Cafe
//
//  Created by Fhict on 16/10/15.
//  Copyright © 2015 Codepanda. All rights reserved.
//

import UIKit

class viewVisits: UIViewController {

    private let reuseIdentifier = "cell"
    
    var visits = [Visit]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let visitloader = VisitLoader()
        visits = visitloader.loadJsonData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return self.visits.count
        
    }
    
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        //create the cell
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(reuseIdentifier, forIndexPath: indexPath) as! cellVisits
        
        //retrieve data
        let date = visits[indexPath.row].startTime.date.ToSpokenDate()
        let time = visits[indexPath.row].startTime.time.ToString() + " - " + visits[indexPath.row].endTime.time.ToString()
        let visitors = visits[indexPath.row].visitors
        
        //populate cell
        cell.lblDate.text = date
        cell.lblTime.text = time
        cell.lblVisitors.text = visitors
        
        //returns the cell
        return cell
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

//
//  viewVisits.swift
//  Zorg Cafe
//
//  Created by Fhict on 16/10/15.
//  Copyright © 2015 Codepanda. All rights reserved.
//

import UIKit

class viewVisits: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    private let reuseIdentifier = "cell"
    @IBOutlet weak var collectionView: UICollectionView!
    
    private let tempVisit1 = Visit(startTime: DateTime(day: 9, month: 11, year: 2015, hour: 18, minute: 0), endTime: DateTime(day: 9, month: 11, year: 2015, hour: 19, minute: 0), visitors: "Ruud en Sander")
    private let tempVisit2 = Visit(startTime: DateTime(day: 10, month: 11, year: 2015, hour: 18, minute: 0), endTime: DateTime(day: 9, month: 11, year: 2015, hour: 20, minute: 0), visitors: "Ruud")
    
    var visits = [Visit]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let visitloader = VisitLoader()
        visits = visitloader.loadJsonData()
        
        visits.append(tempVisit1)
        visits.append(tempVisit2)
        
        // Register cell classes
        self.collectionView!.registerClass(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)
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

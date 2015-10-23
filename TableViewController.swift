//
//  TableViewController.swift
//  Zorg Cafe
//
//  Created by Fhict on 23/10/15.
//  Copyright © 2015 Codepanda. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var zorgcafe = [ZorgCafe]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.loadJsonData()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
    //Terug naar startscherm
    
    @IBAction func btnGoBack(sender: AnyObject) {
        navigationController!.popToRootViewControllerAnimated(true)
        self.navigationController?.navigationBar.hidden = true;
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return zorgcafe.count
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as UITableViewCell
        
        // Configure the cell...
        // Set correct value
        let currentRow = indexPath.row
        let currentDude = self.zorgcafe[currentRow]
        // Set text in cell
        cell.textLabel?.text = currentDude.voornaam
        
        return cell
    }
    
    // Load JSON data
    
    func loadJsonData()
    {
        let url = NSURL(string: "http://athena.fhict.nl/users/i329101/data.json")
        let request = NSURLRequest(URL: url!)
        let session = NSURLSession.sharedSession()
        let dataTask = session.dataTaskWithRequest(request) { (data, response, error) -> Void in
            do
            {
                if let jsonObject: AnyObject = try NSJSONSerialization.JSONObjectWithData(data!, options: NSJSONReadingOptions.AllowFragments)
                {
                    self.parseJsonData(jsonObject)
                }
            }
            catch
            {
                print(error)
            }
        }
        dataTask.resume();
    }
    
    // JSON DATA parsen
    func parseJsonData(jsonObject:AnyObject)
    {
        if let jsonData = jsonObject as? NSArray
        {
            for item in jsonData
            {
                let newDude = ZorgCafe(
                    voornaam: item.objectForKey("voornaam") as! String,
                    achternaam: item.objectForKey("achternaam") as! String,
                    levensmotto: item.objectForKey("levensmotto") as! String
                )
                zorgcafe.append(newDude);
            }
        }
        self.tableView.reloadData()
    }
    
    // In a storyboard, prepare before you navigate
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        //Find selected dude
        let selectedRow = self.tableView.indexPathForSelectedRow
        let selectedDude = self.zorgcafe[selectedRow!.row]
        //Pass selected dude to the next viewcontroller
        let controller = segue.destinationViewController as! DetailsViewController
        controller.selectedDude = selectedDude;
        
    }
}

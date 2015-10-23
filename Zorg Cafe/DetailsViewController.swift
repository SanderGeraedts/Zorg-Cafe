//
//  DetailsViewController.swift
//  Zorg Cafe
//
//  Created by Fhict on 23/10/15.
//  Copyright © 2015 Codepanda. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        self.lblVoornaam.text = self.selectedDude?.voornaam
        self.lblAchternaam.text = self.selectedDude?.achternaam
        self.lblLevensmotto.text = self.selectedDude?.levensmotto
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Piratenobject aanmaken
    var selectedDude = ZorgCafe?()
    
    // Labels en bijbehorende acties
    
    @IBOutlet weak var lblVoornaam: UILabel!
    
    @IBOutlet weak var lblAchternaam: UILabel!
    
    @IBOutlet weak var lblLevensmotto: UITextView!

    @IBAction func btnTerug(sender: AnyObject) {
        navigationController!.popToRootViewControllerAnimated(true)
        self.navigationController?.navigationBar.hidden = true;
    }
    //Terug naar hoofdscherm
//    @IBAction func btnGoHome(sender: AnyObject) {
//        navigationController!.popToRootViewControllerAnimated(true)
//        self.navigationController?.navigationBar.hidden = true;
//    }

    
    
    /*
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    // Get the new view controller using segue.destinationViewController.
    // Pass the selected object to the new view controller.
    }
    */
    
}

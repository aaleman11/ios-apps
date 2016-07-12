//
//  File.swift
//  RockPaperScissors
//
//  Created by Alfredo Aleman on 7/11/16.
//  Copyright (c) 2016 Alfredo Aleman. All rights reserved.
//

import Foundation
import UIKit

class HistoryViewController : UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var history: [RPSMatch]!
    
    // Table View Delegate
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return history.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let CellID = "HistoryCell"
        
        let cell = tableView.dequeueReusableCellWithIdentifier(CellID, forIndexPath: indexPath) 
        
        let match = self.history[indexPath.row]
        
        cell.textLabel!.text = victoryStatusDescription(match)
        cell.detailTextLabel!.text = "\(match.p1) vs. \(match.p2)"
                
        
        return cell
    }
    
    func victoryStatusDescription(match: RPSMatch) -> String {
        
        if (match.p1 == match.p2) {
            return "Tie means you didn't win!"
        } else if (match.p1.defeats(match.p2)) {
            return "Win!"
        } else {
            return "What a loser!"
        }
    }
    @IBAction func dismissHistory(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
}



//
//  ResultViewController.swift
//  RockPaperScissors
//
//  Created by Alfredo Aleman on 7/11/16.
//  Copyright (c) 2016 Alfredo Aleman. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var resultImageView: UIImageView!
    @IBOutlet weak var messageLabel: UILabel!
    
    var match: RPSMatch!
    
    var message: NSString!
    var  picture: UIImage!
    
    @IBOutlet weak var playAgainButton: UIButton!
    
    override func viewWillAppear(animated:Bool)
    {
        super.viewWillAppear(animated)
        self.messageLabel.text = messageForMatch(match)
        self.resultImageView.image = imageForMatch(match)
    }

    override func viewDidAppear(animated: Bool)
    {
        super.viewDidAppear(animated)

        UIView.animateWithDuration(1.5)
        {
            self.resultImageView.alpha = 1;
        }
    }
    
    @IBAction func playAgainButtonPressed(sender: AnyObject)
    {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    func messageForMatch(match: RPSMatch) -> String {
        
        // Handle the tie
        if match.p1 == match.p2 {
            return "It's a tie! I can read your mind!"
        }
        
        return match.winner.description + " " + victoryModeString(match.winner) + " " + match.loser.description + ". " + resultString(match)
    }
    
    func resultString(match: RPSMatch) -> String {
        return match.p1.defeats(match.p2) ? "You Won...cheater!" : "Looooooosaaahhh!"
    }
    
    
    func victoryModeString(gesture: RPS) -> String {
        switch (gesture) {
        case .Rock:
            return "smashes"
        case .Scissors:
            return "filets"
        case .Paper:
            return "suffocates"
        }
    }
    
    func imageForMatch(match: RPSMatch) -> UIImage {
        
        var name = ""
        
        switch (match.winner) {
        case .Rock:
            name = "RockCrushesScissors"
        case .Paper:
            name = "PaperCoversRock"
        case .Scissors:
            name = "ScissorsCutPaper"
        }
        
        if match.p1 == match.p2 {
            name = "itsATie"
        }
        
        return UIImage(named: name)!
    }
}

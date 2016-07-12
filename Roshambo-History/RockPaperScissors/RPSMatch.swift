//
//  SingleMatch.swift
//  RockPaperScissors
//
//  Created by Alfredo Aleman on 7/11/16.
//  Copyright (c) 2016 Alfredo Aleman. All rights reserved.
//

import Foundation

// The RPSMatch struct represents a single match. You'll learn more about structs in Lesson 5's Swift session! 

struct RPSMatch {
    
    let p1: RPS
    let p2: RPS
    let date: NSDate
    
    /**
    * if initialized without a date, use the current date
    */
    init(p1: RPS,p2: RPS) {
        self.p1 = p1
        self.p2 = p2
        self.date = NSDate()
    }
    
    var winner: RPS {
        get {
            return p1.defeats(p2) ? p1 : p2
        }
    }
    
    var loser: RPS {
        get {
            return p1.defeats(p2) ? p2 : p1
        }
    }
}
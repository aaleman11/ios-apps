//
//  ViewController.swift
//  ClickCounter
//
//  Created by Alfredo Aleman on 6/28/16.
//  Copyright (c) 2016 Alfredo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var count = 0
    @IBOutlet var label:UILabel!
    var label2:UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //Label
        var label = UILabel()
        label.frame = CGRectMake(150, 150, 60, 60)
        label.text = "0"
        self.view.addSubview(label)
        self.label = label
        
        var label2 = UILabel()
        label2.frame = CGRectMake(250, 150, 60, 60)
        label2.text = "0"

        self.view.addSubview(label2)
        self.label2 = label2
        
        //Increment Button
        var button = UIButton()
        button.frame = CGRectMake(150, 250, 100, 100)
        button.setTitle("Increment", forState: .Normal)
        button.setTitleColor(UIColor.greenColor(), forState: .Normal)
        self.view.addSubview(button)
        
        button.addTarget(self, action: "incrementCount", forControlEvents: UIControlEvents.TouchUpInside)
        
        //Decrement Button
        var decButton = UIButton()
        decButton.frame = CGRectMake(150, 350, 100, 100)
        decButton.setTitle("Decrement", forState: .Normal)
        decButton.setTitleColor(UIColor.redColor(), forState: .Normal)
        self.view.addSubview(decButton)
        
        decButton.addTarget(self, action: "decrementCount", forControlEvents: UIControlEvents.TouchUpInside)
        
        //Change Color Button
        var colorButton = UIButton()
        colorButton.frame = CGRectMake(150, 450, 100, 100)
        colorButton.setTitle("Color Party!", forState: .Normal)
        colorButton.setTitleColor(UIColor.orangeColor(), forState: .Normal)
        self.view.addSubview(colorButton)
        
        colorButton.addTarget(self, action: "changeColor", forControlEvents: UIControlEvents.TouchUpInside)
        
    }
    
    @IBAction func incrementCount(){
        self.count++
        self.label.text = "\(self.count)"
        self.label2.text = "\(self.count)"
    }
    
    func decrementCount(){
        self.count--
        self.label.text = "\(self.count)"
        self.label2.text = "\(self.count)"
    }
    
    func changeColor(){
        
        var randRed:CGFloat = CGFloat(drand48())
        var randGreen:CGFloat = CGFloat(drand48())
        var randBlue:CGFloat = CGFloat(drand48())
        
        self.view.backgroundColor = UIColor(red: randRed, green: randGreen, blue: randBlue, alpha: 1.0)
        
    }
    
    
}
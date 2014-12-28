//
//  LaunchViewController.swift
//  Bounce
//
//  Created by Robin Mehta on 12/28/14.
//  Copyright (c) 2014 stevenschmatz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Note: you could set up these views like this, which is closer to thier Obj-C counterparts:
    // var label1:UILabel! = UILabel() as UILabel
    // var button1:UIButton! = UIButton.buttonWithType(UIButtonType.System) as UIButton
    // also, if we wanted a type AnyObject!  we could do this:
    // let button1:AnyObject! = UIButton.buttonWithType(UIButtonType.System)
    
    let button1 = UIButton.buttonWithType(UIButtonType.System) as UIButton // loginButton
    let button2 = UIButton.buttonWithType(UIButtonType.System) as UIButton // registerButton
    let button3 = UIButton.buttonWithType(UIButtonType.System) as UIButton // LearnMore button
    
    func makeLayout(){

        //Make background view
        let backgroundView = UIView()
        let backgroundImageView = UIImageView()
        backgroundImageView.setTranslatesAutoresizingMaskIntoConstraints(false)
        backgroundView.setTranslatesAutoresizingMaskIntoConstraints(false)
        //backgroundView.backgroundColor = UIColor(patternImage: backgroundImageView(named: "launch"))
        
        //Make a view
        let view1 = UIView()
        view1.setTranslatesAutoresizingMaskIntoConstraints(false)
        view1.backgroundColor = UIColor.redColor()
        
        //Make a second view
        let view2 = UIView()
        view2.setTranslatesAutoresizingMaskIntoConstraints(false)
        view2.backgroundColor = UIColor(red: 0.75, green: 0.75, blue: 0.1, alpha: 1.0)
        
        
        //Make a button
        button1.setTranslatesAutoresizingMaskIntoConstraints(false)
        button1.setTitle("Platypus", forState: UIControlState.Normal)
        button1.addTarget(self, action: "buttonPressed", forControlEvents: UIControlEvents.TouchUpInside)
        button1.backgroundColor = UIColor.blueColor()
        button1.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        
        //Add the views
        view.addSubview(view1)
        view.addSubview(view2)
        view2.addSubview(button1)
        
        //--------------- constraints
        
        //make dictionary for views
        let viewsDictionary = ["view1":view1,"view2":view2,"button1":button1]
        let metricsDictionary = ["view1Height": 50.0,"view2Height":40.0,"viewWidth":100.0 ]
        //sizing constraints
        
        //view1
        let view1_constraint_H:Array = NSLayoutConstraint.constraintsWithVisualFormat("H:[view1(viewWidth)]", options: NSLayoutFormatOptions(0), metrics: metricsDictionary, views: viewsDictionary)
        let view1_constraint_V:Array = NSLayoutConstraint.constraintsWithVisualFormat("V:[view1(view1Height)]", options: NSLayoutFormatOptions(0), metrics: metricsDictionary, views: viewsDictionary)
        
        view1.addConstraints(view1_constraint_H)
        view1.addConstraints(view1_constraint_V)
        //view2
        let view2_constraint_H:NSArray = NSLayoutConstraint.constraintsWithVisualFormat("H:[view2(viewWidth)]", options: NSLayoutFormatOptions(0), metrics: metricsDictionary, views: viewsDictionary)
        let view2_constraint_V:NSArray = NSLayoutConstraint.constraintsWithVisualFormat("V:[view2(>=view2Height)]", options: NSLayoutFormatOptions(0), metrics: metricsDictionary, views: viewsDictionary)
        
        view2.addConstraints(view2_constraint_H)
        view2.addConstraints(view2_constraint_V)
        
        //position constraints
        
        //views
        let view_constraint_H:NSArray = NSLayoutConstraint.constraintsWithVisualFormat("H:|-[view2]", options: NSLayoutFormatOptions(0), metrics: nil, views: viewsDictionary)
        let view_constraint_V:NSArray = NSLayoutConstraint.constraintsWithVisualFormat("V:|-36-[view1]-[view2]-0-|", options: NSLayoutFormatOptions.AlignAllLeading, metrics: nil, views: viewsDictionary)
        
        view.addConstraints(view_constraint_H)
        view.addConstraints(view_constraint_V)
        
        //controls
        let control_constraint_H:NSArray = NSLayoutConstraint.constraintsWithVisualFormat("H:|-[button1(>=80)]-20-[label1(>=100)]", options: NSLayoutFormatOptions.AlignAllCenterY, metrics: nil, views: viewsDictionary)
        let control_constraint_V:NSArray = NSLayoutConstraint.constraintsWithVisualFormat("V:[button1(40)]-40-|", options: NSLayoutFormatOptions(0), metrics: nil, views: viewsDictionary)
        
        view2.addConstraints(control_constraint_H)
        view2.addConstraints(control_constraint_V)
        
    }
    
    func buttonPressed(){
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.backgroundColor = UIColor(red: 0.9, green: 0.9, blue: 1, alpha: 1.0)
        makeLayout()
    }    // How to set the orientation. The return value is not what we expect, Int not UInt so we cast.
    override func supportedInterfaceOrientations() -> Int {
        return Int(UIInterfaceOrientationMask.All.rawValue)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

//
//  ViewController.swift
//  Bounce
//
//  Created by Steven on 12/22/14.
//  Copyright (c) 2014 stevenschmatz. All rights reserved.
//

import UIKit
import TwitterKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        /*
        =======================
        BEGIN DIGITS API CODE
        =======================
        */
        
        let authenticateButton = DGTAuthenticateButton(authenticationCompletion: {
            (session: DGTSession!, error: NSError!) in
            // play with Digits session
        })
        authenticateButton.center = self.view.center
        self.view.addSubview(authenticateButton)

        /*
        ===================
        END DIGITS API CODE
        ===================
        */
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


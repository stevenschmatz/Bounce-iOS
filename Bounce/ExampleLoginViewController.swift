//
//  ExampleLoginViewController.swift
//  Bounce
//
//  Created by Steven on 12/22/14.
//  Copyright (c) 2014 stevenschmatz. All rights reserved.
//

import UIKit
import TwitterKit

class ExampleLoginViewController: UIViewController {
    override func viewDidLoad() {
        let authenticateButton = DGTAuthenticateButton(authenticationCompletion: {
            (session: DGTSession!, error: NSError!) in
            // play with Digits session
        })
        authenticateButton.center = self.view.center
        self.view.addSubview(authenticateButton)
    }
}
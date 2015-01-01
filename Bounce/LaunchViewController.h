//
//  LaunchViewController.h
//  Bounce
//
//  Created by Robin Mehta on 1/1/15.
//  Copyright (c) 2015 stevenschmatz. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FUIButton.h"

@interface LaunchViewController : UIViewController
@property (strong, nonatomic) IBOutlet FUIButton *LoginButton;
@property (strong, nonatomic) IBOutlet FUIButton *RegisterButton;

@end

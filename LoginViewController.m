//
//  LoginViewController.m
//  Bounce
//
//  Created by Robin Mehta on 12/30/14.
//  Copyright (c) 2014 stevenschmatz. All rights reserved.
//

#import "LoginViewController.h"
#import "UIColor+FlatUI.h"
#import "UISlider+FlatUI.h"
#import "UIStepper+FlatUI.h"
#import "UITabBar+FlatUI.h"
#import "UINavigationBar+FlatUI.h"
#import "FUIButton.h"
#import "FUISwitch.h"
#import "UIFont+FlatUI.h"
#import "FUIAlertView.h"
#import "UIBarButtonItem+FlatUI.h"
#import "UIProgressView+FlatUI.h"
#import "FUISegmentedControl.h"
#import "UIPopoverController+FlatUI.h"

#define SYSTEM_VERSION_EQUAL_TO(v)                  ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedSame)
#define SYSTEM_VERSION_GREATER_THAN(v)              ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedDescending)
#define SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(v)  ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] != NSOrderedAscending)
#define SYSTEM_VERSION_LESS_THAN(v)                 ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedAscending)
#define SYSTEM_VERSION_LESS_THAN_OR_EQUAL_TO(v)     ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] != NSOrderedDescending)

@interface LoginViewController () {
    UIPopoverController *_popoverController;
}
- (IBAction)CancelButton:(id)sender;
@property (weak, nonatomic) IBOutlet FUITextField *Username;
@property (weak, nonatomic) IBOutlet FUITextField *Password;
@property (weak, nonatomic) IBOutlet FUIButton *LoginButton;
@property (weak, nonatomic) IBOutlet FUIButton *recoverPasswordButton;

@end


@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    if ([UIDevice currentDevice].systemVersion.floatValue >= 7) {
        self.edgesForExtendedLayout = UIRectEdgeNone;
    }
    
    // background
    self.title = @"Log In";
    self.view.backgroundColor = [UIColor whiteColor];
    
    // Login Button
    self.LoginButton.buttonColor = [UIColor seaGreenColor];
    self.LoginButton.shadowColor = [UIColor darkerSeaGreenColor];
    self.LoginButton.shadowHeight = 3.0f;
    self.LoginButton.cornerRadius = 6.0f;
    self.LoginButton.titleLabel.font = [UIFont boldFlatFontOfSize:24];
    [self.LoginButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self.LoginButton setTitleColor:[UIColor whiteColor] forState:UIControlStateHighlighted];
    
    // Recover Password Button
    self.recoverPasswordButton.buttonColor = [UIColor seaGreenColor];
    self.recoverPasswordButton.shadowColor = [UIColor darkerSeaGreenColor];
    self.recoverPasswordButton.shadowHeight = 3.0f;
    self.recoverPasswordButton.cornerRadius = 6.0f;
    self.recoverPasswordButton.titleLabel.font = [UIFont boldFlatFontOfSize:20];
    [self.recoverPasswordButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self.recoverPasswordButton setTitleColor:[UIColor whiteColor] forState:UIControlStateHighlighted];

    // Username Text Field
    self.Username.textFieldColor = [UIColor cloudsColor];
    self.Username.borderColor = [UIColor seaGreenColor];
    self.Username.borderWidth = 3.0f;
    self.Username.cornerRadius = 6.0f;
    
    // Password Text Field
    self.Password.textFieldColor = [UIColor cloudsColor];
    self.Password.borderColor = [UIColor seaGreenColor];
    self.Password.borderWidth = 3.0f;
    self.Password.cornerRadius = 6.0f;
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


- (IBAction)unwind:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}


@end

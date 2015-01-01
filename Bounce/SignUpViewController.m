//
//  SignUpViewController.m
//  Bounce
//
//  Created by Robin Mehta on 12/31/14.
//  Copyright (c) 2014 stevenschmatz. All rights reserved.
//

#import "SignUpViewController.h"
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

@interface SignUpViewController () {
    UIPopoverController *_popoverController;
}
@property (weak, nonatomic) IBOutlet FUITextField *Username;
@property (weak, nonatomic) IBOutlet FUITextField *Name;
@property (weak, nonatomic) IBOutlet FUITextField *Password;
@property (weak, nonatomic) IBOutlet FUIButton *NextButton;

@end
@implementation SignUpViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    if ([UIDevice currentDevice].systemVersion.floatValue >= 7) {
        self.edgesForExtendedLayout = UIRectEdgeNone;
    }
    
    // background
    self.title = @"Create Account";
    self.view.backgroundColor = [UIColor whiteColor];
    
    // Next Button
    self.NextButton.buttonColor = [UIColor seaGreenColor];
    self.NextButton.shadowColor = [UIColor darkerSeaGreenColor];
    self.NextButton.shadowHeight = 3.0f;
    self.NextButton.cornerRadius = 6.0f;
    self.NextButton.titleLabel.font = [UIFont boldFlatFontOfSize:16];
    [self.NextButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self.NextButton setTitleColor:[UIColor whiteColor] forState:UIControlStateHighlighted];
    
    
    // Username Text Field
    self.Username.textFieldColor = [UIColor cloudsColor];
    self.Username.borderColor = [UIColor turquoiseColor];
    self.Username.borderWidth = 3.0f;
    self.Username.cornerRadius = 6.0f;
    
    // Password Text Field
    self.Password.textFieldColor = [UIColor cloudsColor];
    self.Password.borderColor = [UIColor seaGreenColor];
    self.Password.borderWidth = 3.0f;
    self.Password.cornerRadius = 6.0f;
    
    // Name Text Field
    self.Name.textFieldColor = [UIColor cloudsColor];
    self.Name.borderColor = [UIColor seaGreenColor];
    self.Name.borderWidth = 3.0f;
    self.Name.cornerRadius = 6.0f;
    
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

@end

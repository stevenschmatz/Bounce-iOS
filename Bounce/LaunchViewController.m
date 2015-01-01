//
//  LaunchViewController.m
//  Bounce
//
//  Created by Robin Mehta on 1/1/15.
//  Copyright (c) 2015 stevenschmatz. All rights reserved.
//

#import "LaunchViewController.h"
#import "FUIButton.h"
#import "UIColor+FlatUI.h"
#import "FlatUIKit.h"

@interface LaunchViewController ()

@end

@implementation LaunchViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // Login Button
    self.LoginButton.buttonColor = [UIColor whiteColor];
    self.LoginButton.shadowColor = [UIColor darkerSeaGreenColor];
    self.LoginButton.shadowHeight = 3.0f;
    self.LoginButton.cornerRadius = 6.0f;
    self.LoginButton.titleLabel.font = [UIFont boldFlatFontOfSize:24];
    [self.LoginButton setTitleColor:[UIColor darkerSeaGreenColor] forState:UIControlStateNormal];
    [self.LoginButton setTitleColor:[UIColor darkerSeaGreenColor] forState:UIControlStateHighlighted];
    
    // Register Button
    self.RegisterButton.buttonColor = [UIColor seaGreenColor];
    self.RegisterButton.shadowColor = [UIColor darkerSeaGreenColor];
    self.RegisterButton.shadowHeight = 3.0f;
    self.RegisterButton.cornerRadius = 6.0f;
    self.RegisterButton.titleLabel.font = [UIFont boldFlatFontOfSize:24];
    [self.RegisterButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self.RegisterButton setTitleColor:[UIColor whiteColor] forState:UIControlStateHighlighted];
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

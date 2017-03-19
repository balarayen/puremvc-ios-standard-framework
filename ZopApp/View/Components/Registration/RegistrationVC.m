//
//  RegistrationVC.m
//  ZopApp
//
// Copyright (C) 2017, puremvc-ios-standrad-framework, Balamurugan Souppourayen
//
// This software may be modified and distributed under the terms
// of the MIT license.  See the LICENSE file for details.

#import "RegistrationVC.h"
#import "AppFacade.h"

@interface RegistrationVC ()

@end

@implementation RegistrationVC {
    UIGestureRecognizer *tapper;
}

@synthesize delegate;

-(id)init {
    self = [super initWithNibName:@"RegistrationVC" bundle:nil];

    if (self != nil) {
        
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];

    tapper = [[UITapGestureRecognizer alloc]
              initWithTarget:self action:@selector(handleSingleTap:)];
    tapper.cancelsTouchesInView = NO;
    [self.view addGestureRecognizer:tapper];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)handleSingleTap:(UITapGestureRecognizer *) sender
{
    [self.view endEditing:YES];
}

- (IBAction)sendOtpClicked:(id)sender {
    [delegate SendOtpSelected:self.MobileNumberText.text];
}

@end

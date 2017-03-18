//
//  RegistrationVC.m
//  ZopApp
//
//  Created by BALAMURUGAN SOUPPOURAYEN on 29/03/16.
//  Copyright © 2016 Clementek Private Limited. All rights reserved.
//

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

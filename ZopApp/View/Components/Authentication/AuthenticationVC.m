//
//  AuthenticationVC.m
//  ZopApp
//
//  Created by BALAMURUGAN SOUPPOURAYEN on 01/04/16.
//  Copyright © 2016 Clementek Private Limited. All rights reserved.
//

#import "AuthenticationVC.h"
#import "AppFacade.h"

@interface AuthenticationVC ()

@end

@implementation AuthenticationVC {
    UIGestureRecognizer *tapper;
}

@synthesize delegate;

-(id)init{
    self = [super initWithNibName:@"AuthenticationVC" bundle:nil];

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

- (IBAction)signupClicked:(id)sender {
    [delegate AuthenticationSelected:self.OtpText.text];
}

@end

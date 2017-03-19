//
//  AuthenticationVC.h
//  ZopApp
//
// Copyright (C) 2017, puremvc-ios-standrad-framework, Balamurugan Souppourayen
//
// This software may be modified and distributed under the terms
// of the MIT license.  See the LICENSE file for details.

#import <UIKit/UIKit.h>

@protocol AuthenticationVCDelegate

-(void)AuthenticationSelected:(NSString*)otp;

@end

@interface AuthenticationVC : UIViewController

@property(nonatomic, retain) id<AuthenticationVCDelegate> delegate;
@property (weak, nonatomic) IBOutlet UITextField *OtpText;

- (IBAction)signupClicked:(id)sender;

@end

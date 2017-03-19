//
//  RegistrationVC.h
//  ZopApp
//
// Copyright (C) 2017, puremvc-ios-standrad-framework, Balamurugan Souppourayen
//
// This software may be modified and distributed under the terms
// of the MIT license.  See the LICENSE file for details.

#import <UIKit/UIKit.h>

@protocol RegistrationVCDelegate

-(void)SendOtpSelected:(NSString*)mobileNumber;

@end

@interface RegistrationVC : UIViewController

@property(nonatomic, retain) id<RegistrationVCDelegate> delegate;
@property (weak, nonatomic) IBOutlet UITextField *MobileNumberText;

- (IBAction)sendOtpClicked:(id)sender;

@end

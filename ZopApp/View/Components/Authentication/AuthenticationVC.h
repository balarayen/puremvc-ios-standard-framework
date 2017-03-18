//
//  AuthenticationVC.h
//  ZopApp
//
//  Created by BALAMURUGAN SOUPPOURAYEN on 01/04/16.
//  Copyright © 2016 Clementek Private Limited. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol AuthenticationVCDelegate

-(void)AuthenticationSelected:(NSString*)otp;

@end

@interface AuthenticationVC : UIViewController

@property(nonatomic, retain) id<AuthenticationVCDelegate> delegate;
@property (weak, nonatomic) IBOutlet UITextField *OtpText;

- (IBAction)signupClicked:(id)sender;

@end

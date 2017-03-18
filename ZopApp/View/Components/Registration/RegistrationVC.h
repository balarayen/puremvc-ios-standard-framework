//
//  RegistrationVC.h
//  ZopApp
//
//  Created by BALAMURUGAN SOUPPOURAYEN on 29/03/16.
//  Copyright © 2016 Clementek Private Limited. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol RegistrationVCDelegate

-(void)SendOtpSelected:(NSString*)mobileNumber;

@end

@interface RegistrationVC : UIViewController

@property(nonatomic, retain) id<RegistrationVCDelegate> delegate;
@property (weak, nonatomic) IBOutlet UITextField *MobileNumberText;

- (IBAction)sendOtpClicked:(id)sender;

@end

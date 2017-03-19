//
//  RegistrationMediator.m
//  ZopApp
//
// Copyright (C) 2017, puremvc-ios-standrad-framework, Balamurugan Souppourayen
//
// This software may be modified and distributed under the terms
// of the MIT license.  See the LICENSE file for details.

#import "RegistrationMediator.h"
#import "UserVO.h"
#import "UserProxy.h"
#import <AFNetworking/AFNetworking.h>
#import <RMUniversalAlert/RMUniversalAlert.h>

@implementation RegistrationMediator

+(NSString *)NAME {
    return @"RegistrationMediator";
}

-(RegistrationVC *)viewComponent {
    return viewComponent;
}

-(void)initializeMediator {
    self.mediatorName = [RegistrationMediator NAME];
}

-(void)onRegister {
    [viewComponent setDelegate:self];
}

-(NSArray *)listNotificationInterests {
    return nil;
}

-(void)handleNotification:(id<INotification>)notification {
}

-(void)SendOtpSelected:(NSString *)mobileNumber
{
    ZF_LOGD("Mobile Number %s", mobileNumber.UTF8String);

    UserProxy* userProxy = (UserProxy*)[facade retrieveProxy:[UserProxy NAME]];
    NSLog(@"userproxy[0] %@", [userProxy data]);

    UserVO* user = [userProxy data];

    if (![mobileNumber isEqualToString:user.PersonalMobileNumber]) {
        [RMUniversalAlert showAlertInViewController:viewComponent
                                          withTitle:@"Confirm"
                                            message:@"Do you want overwrite the old number?"
                                  cancelButtonTitle:@"Cancel"
                             destructiveButtonTitle:@"Confirm"
                                  otherButtonTitles:nil
                                           tapBlock:^(RMUniversalAlert *alert, NSInteger buttonIndex){
                                               if (buttonIndex == alert.cancelButtonIndex) {
                                                   NSLog(@"Cancel Tapped");
                                               } else if (buttonIndex == alert.destructiveButtonIndex) {
                                                   NSLog(@"Overwrite Tapped");
                                                   [self sendNotification:CMD_DELETE_MOBILENUMBER];
                                                   [self sendNotification:CMD_SEND_OTP body:mobileNumber];
                                                   [self sendNotification:MSG_SHOW_AUTHENTICATION];
                                               }
                                           }];
    }
    else {
        [self sendNotification:CMD_SEND_OTP body:mobileNumber];
        [self sendNotification:MSG_SHOW_AUTHENTICATION];
    }
}

@end

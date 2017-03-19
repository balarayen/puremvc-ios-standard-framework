//
//  AppFacade.m
//  ZopApp
//
// Copyright (C) 2017, puremvc-ios-standrad-framework, Balamurugan Souppourayen
//
// This software may be modified and distributed under the terms
// of the MIT license.  See the LICENSE file for details.

#import <Foundation/Foundation.h>
#import "AppFacade.h"
#import "AppStartupCommand.h"
#import "SendOtpCommand.h"
#import "SignupCommand.h"
#import "DeleteMobileNumber.h"

@implementation AppFacade

+(AppFacade *)getInstance {
    return (AppFacade *)[super getInstance];
}

-(void)initializeController {
    [super initializeController];

    [self registerCommand:CMD_APP_STARTUP commandClassRef:[AppStartupCommand class]];
    [self registerCommand:CMD_SEND_OTP commandClassRef:[SendOtpCommand class]];
    [self registerCommand:CMD_SIGNUP commandClassRef:[SignupCommand class]];
    [self registerCommand:CMD_DELETE_MOBILENUMBER commandClassRef:[DeleteMobileNumber class]];
}

-(void)startup:(id)app {
    [self sendNotification:CMD_APP_STARTUP body:app];
}

-(void)pause {
    [self sendNotification:MSG_APP_PAUSE];
}

-(void)resume {
    [self sendNotification:MSG_APP_RESUME];
}

-(void)memoryWarning {
    [self sendNotification:MSG_APP_MEMORYWARNING];
}

-(void)stopAnimation {
    [self sendNotification:MSG_APP_STOP_ANIMATION];
}

-(void)startAnimation {
    [self sendNotification:MSG_APP_START_ANIMATION];
}

-(void)terminate {
    [self sendNotification:MSG_APP_TERMINATE];
}

@end

//
//  AppFacade.m
//  ZopApp
//
//  Created by BALAMURUGAN SOUPPOURAYEN on 01/04/16.
//  Copyright © 2016 Clementek Private Limited. All rights reserved.
//

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

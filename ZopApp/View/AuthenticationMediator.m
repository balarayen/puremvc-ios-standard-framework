//
//  AuthenticationMediator.m
//  ZopApp
//
// Copyright (C) 2017, puremvc-ios-standrad-framework, Balamurugan Souppourayen
//
// This software may be modified and distributed under the terms
// of the MIT license.  See the LICENSE file for details.

#import "AuthenticationMediator.h"

@implementation AuthenticationMediator

+(NSString *)NAME {
    return @"AuthenticationMediator";
}

-(AuthenticationVC *)viewComponent {
    return viewComponent;
}

-(void)initializeMediator {
    self.mediatorName = [AuthenticationMediator NAME];
}

-(void)onRegister {
    [viewComponent setDelegate:self];
}

-(NSArray *)listNotificationInterests {
    return nil;
}

-(void)handleNotification:(id<INotification>)notification {
}

-(void)AuthenticationSelected:(NSString *)otp
{
    [self sendNotification:CMD_SIGNUP body:otp];
    [self sendNotification:MSG_SHOW_REGISTRATION body:otp];
}

@end

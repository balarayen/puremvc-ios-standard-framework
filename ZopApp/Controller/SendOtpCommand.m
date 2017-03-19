//
//  SendOtpCommand.m
//  ZopApp
//
// Copyright (C) 2017, puremvc-ios-standrad-framework, Balamurugan Souppourayen
//
// This software may be modified and distributed under the terms
// of the MIT license.  See the LICENSE file for details.

#import "SendOtpCommand.h"
#import "AppFacade.h"
#import "UserProxy.h"
#import <Realm/Realm.h>
#import "AFNetworking.h"

@implementation SendOtpCommand

-(void)execute:(id<INotification>)notification {

    UserVO* user = [[UserVO alloc] init];
    user.PersonalMobileNumber = [notification body];
    UserProxy* userProxy = (UserProxy*)[facade retrieveProxy:[UserProxy NAME]];
    [userProxy save:user];

    ZF_LOGD("Mobile Number: %s", user.PersonalMobileNumber.UTF8String);
    ZF_LOGD("RLM Path=%s", [RLMRealm defaultRealm].configuration.path.UTF8String);
}

@end

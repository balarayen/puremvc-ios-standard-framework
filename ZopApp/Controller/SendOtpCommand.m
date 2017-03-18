//
//  SendOtpCommand.m
//  ZopApp
//
//  Created by BALAMURUGAN SOUPPOURAYEN on 02/04/16.
//  Copyright © 2016 Clementek Private Limited. All rights reserved.
//

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

//
//  ZopAppMediator.m
//  ZopApp
//
// Copyright (C) 2017, puremvc-ios-standrad-framework, Balamurugan Souppourayen
//
// This software may be modified and distributed under the terms
// of the MIT license.  See the LICENSE file for details.

#import <Foundation/Foundation.h>

#import "ZopAppMediator.h"
#import "ZopApp.h"
#import "AppFacade.h"

@implementation ZopAppMediator

+(NSString *)NAME {
    return @"ZopAppMediator";
}

-(ZopApp *)viewComponent {
    return viewComponent;
}

-(void)initializeMediator {
    self.mediatorName = [ZopAppMediator NAME];
}

-(NSArray *)listNotificationInterests {
    return [NSArray arrayWithObjects:MSG_SHOW_REGISTRATION, MSG_SHOW_AUTHENTICATION, CMD_SIGNUP, nil];
}

-(void)handleNotification:(id<INotification>)notification {
    if ([[notification name] isEqualToString:MSG_SHOW_REGISTRATION]) {
        [self.viewComponent showRegistration];
    } else if ([[notification name] isEqualToString:MSG_SHOW_AUTHENTICATION]) {
        [self.viewComponent showAuthentication];
    }
}

@end

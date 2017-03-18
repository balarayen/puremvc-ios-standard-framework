//
//  ZopAppMediator.m
//  ZopApp
//
//  Created by BALAMURUGAN SOUPPOURAYEN on 01/04/16.
//  Copyright © 2016 Clementek Private Limited. All rights reserved.
//

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

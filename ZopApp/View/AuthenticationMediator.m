//
//  AuthenticationMediator.m
//  ZopApp
//
//  Created by BALAMURUGAN SOUPPOURAYEN on 01/04/16.
//  Copyright © 2016 Clementek Private Limited. All rights reserved.
//

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

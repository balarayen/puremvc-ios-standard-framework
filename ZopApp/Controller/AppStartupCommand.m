//
//  AppStartupCommand.m
//  ZopApp
//
// Copyright (C) 2017, puremvc-ios-standrad-framework, Balamurugan Souppourayen
//
// This software may be modified and distributed under the terms
// of the MIT license.  See the LICENSE file for details.

#import "AppStartupCommand.h"
#import "AppFacade.h"
#import "ZopApp.h"
#import "ZopAppMediator.h"
#import "RegistrationMediator.h"
#import "AuthenticationMediator.h"
#import "UserProxy.h"
#import "ContactProxy.h"

@implementation AppStartupCommand

-(void)execute:(id<INotification>)notification {
    [facade registerProxy:[UserProxy proxy]];
    [facade registerProxy:[ContactProxy proxy]];

    ZopApp *app = [notification body];
    
    [facade registerMediator:[ZopAppMediator withViewComponent:app]];
    [facade registerMediator:[RegistrationMediator withViewComponent:app.registrationVC]];
    [facade registerMediator:[AuthenticationMediator withViewComponent:app.authenticationVC]];
}

@end

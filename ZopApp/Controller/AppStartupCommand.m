//
//  AppStartupCommand.m
//  ZopApp
//
//  Created by BALAMURUGAN SOUPPOURAYEN on 01/04/16.
//  Copyright © 2016 Clementek Private Limited. All rights reserved.
//

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

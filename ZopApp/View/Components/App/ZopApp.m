//
//  ZopApp.m
//  ZopApp
//
// Copyright (C) 2017, puremvc-ios-standrad-framework, Balamurugan Souppourayen
//
// This software may be modified and distributed under the terms
// of the MIT license.  See the LICENSE file for details.

#import <Foundation/Foundation.h>
#import "ZopApp.h"
#import "AppFacade.h"

@interface ZopApp ()
@end

@implementation ZopApp

-(id)init:(UIWindow*)window {
    if (self = [super init]) {
        _registrationVC = [[RegistrationVC alloc] init];
        _navigationVC = [[UINavigationController alloc] initWithRootViewController:_registrationVC];
        [_navigationVC setNavigationBarHidden:YES animated:NO];
        [window setRootViewController:_navigationVC];
        [window makeKeyAndVisible];

        _authenticationVC = [[AuthenticationVC alloc] init];
        ZF_LOGI("Start ZopApp");
        [[AppFacade getInstance] startup:self];
    }
    return self;
}

-(void)showRegistration {
    [_navigationVC popToRootViewControllerAnimated:NO];
}

-(void)showAuthentication {
    [_navigationVC pushViewController:_authenticationVC animated:NO];
}

-(void)removeAuthentication {
    [_navigationVC popToRootViewControllerAnimated:NO];
}

@end

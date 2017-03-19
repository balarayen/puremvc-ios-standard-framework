//
//  ZopApp.h
//  ZopApp
//
// Copyright (C) 2017, puremvc-ios-standrad-framework, Balamurugan Souppourayen
//
// This software may be modified and distributed under the terms
// of the MIT license.  See the LICENSE file for details.

#import <UIKit/UIKit.h>
#import "RegistrationVC.h"
#import "AuthenticationVC.h"

@interface ZopApp : NSObject {
    
}

@property (nonatomic, retain) UINavigationController *navigationVC;
@property (nonatomic, retain) RegistrationVC *registrationVC;
@property (nonatomic, retain) AuthenticationVC *authenticationVC;

-(id)init:(UIWindow*)window;
-(void)showRegistration;
-(void)showAuthentication;
-(void)removeAuthentication;

@end

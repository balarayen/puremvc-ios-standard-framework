//
//  DeleteMobileNumber.m
//  ZopApp
//
// Copyright (C) 2017, puremvc-ios-standrad-framework, Balamurugan Souppourayen
//
// This software may be modified and distributed under the terms
// of the MIT license.  See the LICENSE file for details.

#import "DeleteMobileNumber.h"
#import "AppFacade.h"
#import "UserProxy.h"
#import <Realm/Realm.h>
#import "AFNetworking.h"

@implementation DeleteMobileNumber

-(void)execute:(id<INotification>)notification {
    UserProxy* userProxy = (UserProxy*)[facade retrieveProxy:[UserProxy NAME]];
    [userProxy delete];
}

@end

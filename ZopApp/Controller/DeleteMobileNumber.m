//
//  DeleteMobileNumber.m
//  ZopApp
//
//  Created by BALAMURUGAN SOUPPOURAYEN on 02/04/16.
//  Copyright © 2016 Clementek Private Limited. All rights reserved.
//

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

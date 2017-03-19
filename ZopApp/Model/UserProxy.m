//
//  UserProxy.m
//  ZopApp
//
// Copyright (C) 2017, puremvc-ios-standrad-framework, Balamurugan Souppourayen
//
// This software may be modified and distributed under the terms
// of the MIT license.  See the LICENSE file for details.

#import <Foundation/Foundation.h>
#import "UserProxy.h"
#import <Realm/RLMResults.h>

@interface UserProxy () {
    
}

@end

@implementation UserProxy

-(void)initializeProxy
{
    [super initializeProxy];

    self.proxyName = [UserProxy NAME];
    self.data = [[UserVO alloc] initWithValue:[[UserVO allObjects] firstObject]];
    NSLog(@"UserVO %@", [self data]);
}

+(NSString *)NAME {
    return @"UserProxy";
}

-(UserVO *)data {
    return data;
}

-(void)save:(id)item
{
    RLMRealm* realm = [RLMRealm defaultRealm];

    if ([[UserVO allObjects] count] == 0) {
        [realm beginWriteTransaction];
        [realm addObject:item];
        [realm commitWriteTransaction];
    }
    else {
        
        [realm beginWriteTransaction];

        UserVO* user = [[UserVO allObjects] firstObject];
        UserVO* newUser = (UserVO*)item;

        // Cannot overwrite primary key. Make sure the key isn't  changed
        //user.PersonalMobileNumber = newUser.PersonalMobileNumber;
        user.Name = newUser.Name;
        user.Gender = newUser.Gender;
        user.DateOfBirth = newUser.DateOfBirth;
        user.PictureUrl = newUser.PictureUrl;
        user.ThumbPictureUrl = newUser.ThumbPictureUrl;
        user.Privacy = newUser.Privacy;

        [realm commitWriteTransaction];
        NSLog(@"new Mobile Number %@", user.PersonalMobileNumber);
    }

    self.data = [[UserVO alloc] initWithValue:[[UserVO allObjects] firstObject]];
}

-(void)delete
{
    RLMRealm* realm = [RLMRealm defaultRealm];
    if ([[UserVO allObjects] count] > 0) {
        [realm beginWriteTransaction];
        [realm deleteObjects:[UserVO allObjects]];
        [realm commitWriteTransaction];
        self.data = nil;
    }
}

@end

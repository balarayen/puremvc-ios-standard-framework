//
//  ContactProxy.m
//  ZopApp
//
// Copyright (C) 2017, puremvc-ios-standrad-framework, Balamurugan Souppourayen
//
// This software may be modified and distributed under the terms
// of the MIT license.  See the LICENSE file for details.

#import <Foundation/Foundation.h>
#import "ContactProxy.h"
#import <Realm/RLMResults.h>

@interface ContactProxy ()

@property (nonatomic, strong) RLMNotificationToken *RlmNotification;

@end

@implementation ContactProxy

-(void)initializeProxy
{
    [super initializeProxy];
    
    __weak typeof(self) weakself = self;
    self.RlmNotification = [RLMRealm.defaultRealm addNotificationBlock:
                            ^(NSString* notification, RLMRealm* realm){
                                [weakself reloadData];
                            }];

    [self reloadData];
    self.proxyName = [ContactProxy NAME];
}

+(NSString *)NAME {
    return @"ContactProxy";
}

-(RLMResults*)data {
    return data;
}

-(void)reloadData
{
    self.data = [ContactVO allObjects];
}

-(void)add:(id)item
{
    RLMRealm* realm = [RLMRealm defaultRealm];
    [realm beginWriteTransaction];
    [realm addObject:item];
    [realm commitWriteTransaction];
}

-(void)update:(id)item
{
    RLMRealm* realm = [RLMRealm defaultRealm];
    ContactVO* updateContact = (ContactVO*)item;
    ContactVO* contact = [ContactVO objectForPrimaryKey:updateContact.PersonalMobileNumber];

    [realm beginWriteTransaction];
    contact = [updateContact copy];
    [realm commitWriteTransaction];
}

-(void)delete:(id)item
{
    RLMRealm* realm = [RLMRealm defaultRealm];
    ContactVO* updateContact = (ContactVO*)item;
    ContactVO* contact = [ContactVO objectForPrimaryKey:updateContact.PersonalMobileNumber];

    [realm beginWriteTransaction];
    [realm deleteObject:contact];
    [realm commitWriteTransaction];
}

-(void)deleteAll
{
    RLMRealm* realm = [RLMRealm defaultRealm];
    RLMResults* contacts = [ContactVO allObjects];

    [realm beginWriteTransaction];
    [realm deleteObjects:contacts];
    [realm commitWriteTransaction];
}

@end

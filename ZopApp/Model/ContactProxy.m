//
//  ContactProxy.m
//  ZopApp
//
//  Created by BALAMURUGAN SOUPPOURAYEN on 12/04/16.
//  Copyright © 2016 Clementek Private Limited. All rights reserved.
//

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

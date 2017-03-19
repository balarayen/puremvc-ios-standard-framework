//
//  ContactProxy.h
//  ZopApp
//
// Copyright (C) 2017, puremvc-ios-standrad-framework, Balamurugan Souppourayen
//
// This software may be modified and distributed under the terms
// of the MIT license.  See the LICENSE file for details.

#import "Proxy.h"
#import <Realm/Realm.h>
#import "ContactVO.h"

RLM_ARRAY_TYPE(ContactVO);

@interface ContactProxy : Proxy

-(void)add:(id)item;
-(void)update:(id)item;
-(void)delete:(id)item;
-(void)deleteAll;

@end

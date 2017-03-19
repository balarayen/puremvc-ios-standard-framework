//
//  UserProxy.h
//  ZopApp
//
// Copyright (C) 2017, puremvc-ios-standrad-framework, Balamurugan Souppourayen
//
// This software may be modified and distributed under the terms
// of the MIT license.  See the LICENSE file for details.

#import "Proxy.h"
#import <Realm/Realm.h>
#import "UserVO.h"

@interface UserProxy : Proxy

-(void)save:(id)item;
-(void)delete;

@end

RLM_ARRAY_TYPE(UserVO)

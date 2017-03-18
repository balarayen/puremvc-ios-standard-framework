//
//  UserProxy.h
//  ZopApp
//
//  Created by BALAMURUGAN SOUPPOURAYEN on 11/04/16.
//  Copyright © 2016 Clementek Private Limited. All rights reserved.
//

#import "Proxy.h"
#import <Realm/Realm.h>
#import "UserVO.h"

@interface UserProxy : Proxy

-(void)save:(id)item;
-(void)delete;

@end

RLM_ARRAY_TYPE(UserVO)

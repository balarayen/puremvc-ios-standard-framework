//
//  ContactProxy.h
//  ZopApp
//
//  Created by BALAMURUGAN SOUPPOURAYEN on 12/04/16.
//  Copyright © 2016 Clementek Private Limited. All rights reserved.
//

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

//
//  ContactVO.h
//  ZopApp
//
//  Created by BALAMURUGAN SOUPPOURAYEN on 11/04/16.
//  Copyright © 2016 Clementek Private Limited. All rights reserved.
//

#import <Realm/Realm.h>
#import <Realm/RLMObject.h>
#import <Foundation/Foundation.h>

@interface ContactVO : RLMObject

@property NSString *PersonalMobileNumber;
@property NSString *Name;
@property NSString *Gender;
@property NSString *DateOfBirth;
@property NSString *PictureUrl;
@property NSString *ThumbPictureUrl;
@property NSString *Privacy;

@end

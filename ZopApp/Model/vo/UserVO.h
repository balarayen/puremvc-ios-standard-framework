//
//  UserVO.h
//  ZopApp
//
// Copyright (C) 2017, puremvc-ios-standrad-framework, Balamurugan Souppourayen
//
// This software may be modified and distributed under the terms
// of the MIT license.  See the LICENSE file for details.

#import <Realm/Realm.h>
#import <Realm/RLMObject.h>
#import <Foundation/Foundation.h>

@interface UserVO : RLMObject

@property NSString *PersonalMobileNumber;
@property NSString *Name;
@property NSString *Gender;
@property NSString *DateOfBirth;
@property NSString *PictureUrl;
@property NSString *ThumbPictureUrl;
@property NSString *Privacy;

@end

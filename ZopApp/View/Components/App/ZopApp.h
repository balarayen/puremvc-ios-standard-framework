//
//  ZopApp.h
//  ZopApp
//
//  Created by BALAMURUGAN SOUPPOURAYEN on 01/04/16.
//  Copyright © 2016 Clementek Private Limited. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RegistrationVC.h"
#import "AuthenticationVC.h"

@interface ZopApp : NSObject {
    
}

@property (nonatomic, retain) UINavigationController *navigationVC;
@property (nonatomic, retain) RegistrationVC *registrationVC;
@property (nonatomic, retain) AuthenticationVC *authenticationVC;

-(id)init:(UIWindow*)window;
-(void)showRegistration;
-(void)showAuthentication;
-(void)removeAuthentication;

@end

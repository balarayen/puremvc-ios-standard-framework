//
//  AppFacade.h
//  ZopApp
//
//  Created by BALAMURUGAN SOUPPOURAYEN on 01/04/16.
//  Copyright © 2016 Clementek Private Limited. All rights reserved.
//

#import "Facade.h"

#define CMD_APP_STARTUP @"AppStartup"
#define CMD_SEND_OTP @"SendOtp"
#define CMD_SIGNUP @"Signup"
#define CMD_DELETE_MOBILENUMBER @"DeleteMobileNumber"

#define MSG_APP_PAUSE @"AppPause"
#define MSG_APP_RESUME @"AppResume"
#define MSG_APP_MEMORYWARNING @"AppMemoryWarning"
#define MSG_APP_STOP_ANIMATION @"AppStopAnimation"
#define MSG_APP_START_ANIMATION @"AppStartAnimation"
#define MSG_APP_TERMINATE @"AppTerminate"

#define MSG_SHOW_REGISTRATION @"ShowRegistration"
#define MSG_SHOW_AUTHENTICATION @"ShowAuthentication"
#define MSG_REMOVE_AUTHENTICATION @"RemoveAuthentication"

@interface AppFacade : Facade {
}

+(AppFacade *)getInstance;

-(void)initializeController;

-(void)startup:(id)app;
-(void)pause;
-(void)resume;
-(void)memoryWarning;
-(void)stopAnimation;
-(void)startAnimation;
-(void)terminate;

@end

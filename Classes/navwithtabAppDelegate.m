//
//  navwithtabAppDelegate.m
//  navwithtab
//
//  Created by Shane Zatezalo on 3/16/10.
//  Copyright Lottadot, LLC 2010. All rights reserved.
//

#import "navwithtabAppDelegate.h"
#import "navwithtabViewController.h"

@implementation navwithtabAppDelegate

@synthesize navigationController;
@synthesize window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
    
    // Override point for customization after app launch    
//    [window addSubview:viewController.view];
//    [window makeKeyAndVisible];
	[window addSubview:[navigationController view]];
    [window makeKeyAndVisible];	
	return YES;
}


- (void)dealloc {
    [window release];
	[navigationController release], self.navigationController = nil;

    [super dealloc];
}


@end

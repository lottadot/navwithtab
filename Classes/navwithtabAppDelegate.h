//
//  navwithtabAppDelegate.h
//  navwithtab
//
//  Created by Shane Zatezalo on 3/16/10.
//  Copyright Lottadot, LLC 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface navwithtabAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
	UINavigationController *navigationController;
}

// create a preprocessor macro. when used, it expands to an expression that gets the app delegate and casts it to the appropriate class.
#define appDel \
((navwithtabAppDelegate *)[UIApplication sharedApplication].delegate)

@property (nonatomic, retain) IBOutlet UINavigationController *navigationController;
@property (nonatomic, retain) IBOutlet UIWindow *window;

@end


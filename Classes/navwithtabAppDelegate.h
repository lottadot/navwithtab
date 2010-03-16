//
//  navwithtabAppDelegate.h
//  navwithtab
//
//  Created by Shane Zatezalo on 3/16/10.
//  Copyright Lottadot, LLC 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class navwithtabViewController;

@interface navwithtabAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    navwithtabViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet navwithtabViewController *viewController;

@end


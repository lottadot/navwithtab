//
//  SecondViewController.h
//  navwithtab
//
//  Created by Shane Zatezalo on 3/16/10.
//  Copyright 2010 Lottadot, LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TabBarFirstTabViewController, TabBarSecondTabViewController;

@interface SecondViewController : UIViewController {
	UITabBarController *tabBar;
	UIWindow *window;
	TabBarFirstTabViewController *tabBarFirstTab;
	TabBarSecondTabViewController *tabBarSecondTab;
}

@property (nonatomic, retain)  TabBarFirstTabViewController *tabBarFirstTab;
@property (nonatomic, retain)  TabBarSecondTabViewController *tabBarSecondTab;
@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UITabBarController *tabBar;

@end

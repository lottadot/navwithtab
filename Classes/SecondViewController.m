//
//  SecondViewController.m
//  navwithtab
//
//  Created by Shane Zatezalo on 3/16/10.
//  Copyright 2010 Lottadot, LLC. All rights reserved.
//

#import "SecondViewController.h"
#import "navwithtabAppDelegate.h"
#import "TabBarFirstTabViewController.h"
#import "TabBarSecondTabViewController.h"


@implementation SecondViewController

@synthesize tabBarFirstTab;
@synthesize tabBarSecondTab;
@synthesize window;
@synthesize tabBar;

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
	[window setBackgroundColor:[UIColor yellowColor]];
	
	NSMutableArray *localControllersArray = [[NSMutableArray alloc] initWithCapacity:2];

	if (self.tabBarFirstTab == nil) {
		TabBarFirstTabViewController *tempFirstTab = [[TabBarFirstTabViewController alloc] init];
		self.tabBarFirstTab = tempFirstTab;
		[tempFirstTab release];
	}
	[localControllersArray addObject:self.tabBarFirstTab];

	if (self.tabBarSecondTab == nil) {
		TabBarSecondTabViewController *tempSecondTab = [[TabBarSecondTabViewController alloc] init];
		self.tabBarSecondTab = tempSecondTab;
		[tempSecondTab release];
	}
	[localControllersArray addObject:self.tabBarSecondTab];
	
	UITabBarController *tempTBC = [[UITabBarController alloc] 
								   initWithNibName:@"SecondViewController" 
								   bundle:[NSBundle mainBundle]];
	tempTBC.viewControllers = localControllersArray;
	[localControllersArray release];
	self.tabBar = tempTBC;
	[tempTBC release];
	
	[window addSubview:self.tabBar.view];
	[window makeKeyAndVisible];
}

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)dealloc {
	[tabBar release], self.tabBar = nil;

	[window release], self.window = nil;

	[tabBarFirstTab release], self.tabBarFirstTab = nil;
	[tabBarSecondTab release], self.tabBarSecondTab = nil;

    [super dealloc];
}


@end

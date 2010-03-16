//
//  SecondViewController.m
//  navwithtab
//
//  Created by Shane Zatezalo on 3/16/10.
//  Copyright 2010 Lottadot, LLC. All rights reserved.
//

#import "SecondViewController.h"
#import "navwithtabAppDelegate.h"

@implementation SecondViewController

@synthesize tabBar;

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
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

    [super dealloc];
}


@end

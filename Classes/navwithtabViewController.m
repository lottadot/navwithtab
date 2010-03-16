//
//  navwithtabViewController.m
//  navwithtab
//
//  Created by Shane Zatezalo on 3/16/10.
//  Copyright Lottadot, LLC 2010. All rights reserved.
//

#import "navwithtabViewController.h"
#import "navwithtabAppDelegate.h"
#import "SecondViewController.h"

@implementation navwithtabViewController

@synthesize clickMe;


- (IBAction)clickMeWasClicked {
	SecondViewController *tempVC = [[SecondViewController alloc] init];
	[appDel.navigationController pushViewController:tempVC animated:YES];
	[tempVC release];
}

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}

- (void)dealloc {
	[clickMe release], self.clickMe = nil;

    [super dealloc];
}

@end

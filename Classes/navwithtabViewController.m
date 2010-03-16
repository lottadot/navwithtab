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

@synthesize secondVC;
@synthesize clickMe;


- (IBAction)clickMeWasClicked {
	if (secondVC == nil) {
		SecondViewController *tempVC = [[SecondViewController alloc] init];
		self.secondVC = tempVC;
		[tempVC release];
	}
	[appDel.navigationController pushViewController:self.secondVC animated:YES];
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

	[secondVC release], self.secondVC = nil;

    [super dealloc];
}

@end

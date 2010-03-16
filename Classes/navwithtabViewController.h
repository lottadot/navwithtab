//
//  navwithtabViewController.h
//  navwithtab
//
//  Created by Shane Zatezalo on 3/16/10.
//  Copyright Lottadot, LLC 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SecondViewController;

@interface navwithtabViewController : UIViewController {
	UIButton *clickMe;
}

@property (nonatomic, retain) IBOutlet UIButton *clickMe;
- (IBAction)clickMeWasClicked;
@end


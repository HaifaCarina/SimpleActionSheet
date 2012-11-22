//
//  SimpleActionSheetViewController.m
//  SimpleActionSheet
//
//  Created by Haifa Carina Baluyos on 1/24/12.
//  Copyright 2012 Haifa Carina Baluyos, Inc. All rights reserved.
//

#import "SimpleActionSheetViewController.h"

@implementation SimpleActionSheetViewController

- (void) styleAction {
    
    UIActionSheet *styleAlert = [[UIActionSheet alloc] initWithTitle:@"Choose a UIBarStyle:"
                                                            delegate:self cancelButtonTitle:@"Cancel"
                                              destructiveButtonTitle:nil
                                                   otherButtonTitles:	@"Default",
                                 @"BlackOpaque",
                                 @"BlackTranslucent",
                                 nil,
                                 nil];
	
	// use the same style as the nav bar
	styleAlert.actionSheetStyle = self.navigationController.navigationBar.barStyle;
	
	[styleAlert showInView:self.view];
	[styleAlert release];
}

- (void) loadView {
    [super loadView];
    
    self.title = @"SimpleActionSheet";
    
    UIBarButtonItem *styleButton = [[UIBarButtonItem alloc] 
                                   initWithTitle:@"Style"                                            
                                   style:UIBarButtonItemStyleBordered 
                                   target:self 
                                   action:@selector(styleAction)];
    self.navigationItem.leftBarButtonItem = styleButton;
    [styleButton release];

    
}


#pragma mark -
#pragma mark UIActionSheetDelegate

- (void)actionSheet:(UIActionSheet *)modalView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    // Change the navigation bar style, also make the status bar match with it
	switch (buttonIndex)
	{
		case 0:
		{
			[UIApplication sharedApplication].statusBarStyle = UIStatusBarStyleDefault;
			self.navigationController.navigationBar.barStyle = UIBarStyleDefault;
			break;
		}
		case 1:
		{
			[UIApplication sharedApplication].statusBarStyle = UIStatusBarStyleBlackOpaque;
			self.navigationController.navigationBar.barStyle = UIBarStyleBlackOpaque;
			break;
		}
		case 2:
		{
			[UIApplication sharedApplication].statusBarStyle = UIStatusBarStyleBlackTranslucent;
			self.navigationController.navigationBar.barStyle = UIBarStyleBlackTranslucent;
			break;
		}
	}
}

@end

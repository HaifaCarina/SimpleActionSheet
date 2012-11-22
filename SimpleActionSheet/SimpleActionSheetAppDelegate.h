//
//  SimpleActionSheetAppDelegate.h
//  SimpleActionSheet
//
//  Created by Haifa Carina Baluyos on 1/24/12.
//  Copyright 2012 Haifa Carina Baluyos, Inc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SimpleActionSheetViewController.h"
@interface SimpleActionSheetAppDelegate : NSObject <UIApplicationDelegate> {
    SimpleActionSheetViewController *viewController;
    UINavigationController *navController;
}

@property (nonatomic, retain) UIWindow *window;
@property (nonatomic, retain) SimpleActionSheetViewController *viewController;
@property (nonatomic, retain) UINavigationController *navController;

@end

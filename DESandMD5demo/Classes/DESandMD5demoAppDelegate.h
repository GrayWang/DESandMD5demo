//
//  DESandMD5demoAppDelegate.h
//  DESandMD5demo
//
//  Created by Xu Jian on 11/7/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DESandMD5demoViewController;

@interface DESandMD5demoAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    DESandMD5demoViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet DESandMD5demoViewController *viewController;

@end


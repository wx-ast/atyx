//
//  atyxAppDelegate.h
//  atyx
//
//  Created by ast on 28.09.10.
//  Copyright (c) 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface atyxAppDelegate : NSObject <UIApplicationDelegate, UIScrollViewDelegate> {
    UIWindow *window;
    UINavigationController *navigationController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet UINavigationController *navigationController;

@end

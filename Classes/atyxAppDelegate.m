//
//  atyxAppDelegate.m
//  atyx
//
//  Created by ast on 28.09.10.
//  Copyright (c) 2010 __MyCompanyName__. All rights reserved.
//

#import "atyxAppDelegate.h"

#import "WebViewController.h"
#import "MainViewController.h"

@implementation atyxAppDelegate


@synthesize window;

@synthesize navigationController;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    MainViewController *mainViewController = [[MainViewController alloc] init];
    [mainViewController autorelease];
    
    //NSArray *timeZones = [NSTimeZone knownTimeZoneNames];
	//rootViewController.timeZoneNames = [timeZones sortedArrayUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
    
    UINavigationController *aNavigationController = [[UINavigationController alloc] initWithRootViewController:mainViewController];
	self.navigationController = aNavigationController;
    
    WebViewController *wvc = [[[WebViewController alloc] init] autorelease];
    
    [mainViewController setWebViewController:wvc];
    
    
  
    // Override point for customization after application launch.
    // Add the navigation controller's view to the window and display.
    [window addSubview:navigationController.view];  
    [window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillTerminate:(UIApplication *)application {

    // Save data if appropriate.
}

- (void)dealloc {

    [window release];
    [navigationController release];
    [super dealloc];
}

@end

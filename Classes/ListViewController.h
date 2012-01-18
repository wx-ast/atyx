//
//  RootViewController.h
//  atyx
//
//  Created by ast on 28.09.10.
//  Copyright (c) 2010 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@class WebViewController;

@interface ListViewController : UITableViewController {
//    NSArray *timeZoneNames;
    WebViewController *webViewController;
    NSMutableArray *arr;
}

//@property (nonatomic, retain) NSArray *timeZoneNames;
@property (nonatomic, retain) WebViewController *webViewController;
@property (nonatomic, retain) NSMutableArray *arr;

@end

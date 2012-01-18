//
//  MainViewController.h
//  atyx
//
//  Created by Alexandr P on 16.01.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class WebViewController;

@interface MainViewController : UIViewController
{
    IBOutlet UITextView *text;
    WebViewController *webViewController;
}

- (IBAction)DoAll:(id)sender;
- (IBAction)ImageClick:(id)sender;

@property (nonatomic, retain) WebViewController *webViewController;

@end

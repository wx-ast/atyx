//
//  MainViewController.m
//  atyx
//
//  Created by Alexandr P on 16.01.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "MainViewController.h"
#import "WebViewController.h"
#import "ListViewController.h"

@implementation MainViewController

@synthesize webViewController;

- (void)viewDidLoad {
    self.title = NSLocalizedString(@"Atyx", @"Atyx title");
}

- (IBAction)DoAll:(id)sender
{
    ListViewController *listViewController = 
    [[[ListViewController alloc] initWithStyle:UITableViewStylePlain] autorelease];    
    
    [[self navigationController] pushViewController:listViewController animated:YES];
}

- (IBAction)ImageClick:(id)sender
{
    [[self navigationController] pushViewController:webViewController animated:YES];
    
    // Construct a URL with the link string of the item
    NSURL *url = [NSURL URLWithString:@"http://atyx.ru/money/"];
    
    // Construct a request object with that URL
    NSURLRequest *req = [NSURLRequest requestWithURL:url];
    
    // Load the request into the web view 
    [[webViewController webView] loadRequest:req];
    
    // Set the title of the web view controller's navigation item
    [[webViewController navigationItem] setTitle:@"atyx title"];
}

@end

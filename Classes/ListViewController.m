//
//  RootViewController.m
//  atyx
//
//  Created by ast on 28.09.10.
//  Copyright (c) 2010 __MyCompanyName__. All rights reserved.
//

#import "ListViewController.h"
#import "WebViewController.h"

@implementation ListViewController

@synthesize webViewController;
@synthesize arr;

 

// Customize the number of sections in the table view.
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.arr count];
}


// Customize the appearance of table view cells.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:CellIdentifier] autorelease];
    }
    
    NSDictionary *str = [self.arr objectAtIndex:indexPath.row];
    [cell.textLabel setText: [str objectForKey:@"name"]];
    [cell.detailTextLabel setText: [str objectForKey:@"date"]];
//    [cell setAccessoryType:UITableViewCellAccessoryDisclosureIndicator];

    return cell;
}

- (NSIndexPath *)tableView:(UITableView *)tableView willSelectRowAtIndexPath:(NSIndexPath *)indexPath 
{
    
    return nil;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    // Push the web view controller onto the navigation stack - this implicitly 
    // creates the web view controller's view the first time through
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

- (void)dealloc {
//    [timeZoneNames release];
    [super dealloc];
}

@end

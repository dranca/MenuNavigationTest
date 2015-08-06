//
//  TestTableViewController.m
//  MenuNavigationTest
//
//  Created by Alexandru on 06/08/15.
//  Copyright (c) 2015 Greenchili BV. All rights reserved.
//

#import "TestTableViewController.h"
#import "UINavigationBar+FixedHeightWhenStatusBarHidden.h"

@implementation TestTableViewController



- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.navigationItem setRightBarButtonItem:[[UIBarButtonItem alloc] initWithTitle:@"hide" style:UIBarButtonItemStyleDone target:self action:@selector(hideStatusBar)]];
    self.navigationController.navigationBar.fixedHeightWhenStatusBarHidden = YES;
}

- (void) hideStatusBar
{
    [self setNeedsStatusBarAppearanceUpdate];
}

- (BOOL)prefersStatusBarHidden
{
    return ![UIApplication sharedApplication].statusBarHidden;
}

@end

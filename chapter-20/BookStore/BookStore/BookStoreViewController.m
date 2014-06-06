//
//  BookStoreViewController.m
//  BookStore
//
//  Created by Simon on 17/1/14.
//  Copyright (c) 2014 Appcoda. All rights reserved.
//

#import "BookStoreViewController.h"

@interface BookStoreViewController ()

@end

@implementation BookStoreViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buy:(id)sender {
    [[[UIAlertView alloc] initWithTitle:@"Confirmation"
                                message:NSLocalizedString(@"BOOK_PURCHASED", @"Message")
                               delegate:nil
                      cancelButtonTitle:@"OK"
                      otherButtonTitles:nil] show];
}
@end

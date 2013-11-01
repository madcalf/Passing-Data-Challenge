//
//  DDDViewController.m
//  Passing Data Challenge
//
//  Created by DDD on 2013-11-01.
//  Copyright (c) 2013 DDD. All rights reserved.
//

#import "DDDViewController.h"
#import "DDDDetailViewController.h"

@interface DDDViewController ()

@end

@implementation DDDViewController

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

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    // check that the sender is the button
    if ([sender isKindOfClass:[UIButton class]]) {
        
        // check that the destination is our detail view
        if ([segue.destinationViewController isKindOfClass:[DDDDetailViewController class]]) {
            
            // create a pointer of type DDDDetailViewController so we can talk to it.
            DDDDetailViewController *detailViewController = segue.destinationViewController;
            detailViewController.dataToDisplay = self.textField.text;
            
        }
    }
}

@end

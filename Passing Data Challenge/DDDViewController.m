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
    self.textField.delegate = self;
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
            
            // Since segue.destinationController is of type id, it won't recognize the dataToDisplay property. So we need to create a pointer of type DDDDetailViewController so we can access it's properties, etc.
            DDDDetailViewController *detailViewController = segue.destinationViewController;
            detailViewController.dataToDisplay = self.textField.text;
            
            // assign this class as the delegate to the DetailView
            detailViewController.delegate = self;
        }
    }
}

#pragma mark - DDDDetailViewControllerDelegate

-(void)didUpdateText:(NSString *)aString {
    self.textField.text = aString;
    // Ah, here's how we pop the detail view off the stack.
    //    [self.navigationController popViewControllerAnimated:YES];
}

#pragma mark - UITextFieldDelegate

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    NSLog(@"[DDDViewController textFieldShouldReturn");
    [self.textField resignFirstResponder];
    return YES;
}
@end

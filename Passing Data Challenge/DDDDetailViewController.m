//
//  DDDDetailViewController.m
//  Passing Data Challenge
//
//  Created by DDD on 2013-11-01.
//  Copyright (c) 2013 DDD. All rights reserved.
//

#import "DDDDetailViewController.h"

@interface DDDDetailViewController ()

@end

@implementation DDDDetailViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    self.detailLabel.text = self.dataToDisplay;
    self.textField.delegate = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)updateButtonPressed:(UIButton *)sender {
    [self.delegate didUpdateText:self.textField.text];
    // Ah, here's how we pop the detail view off the stack.
    // is it better to put it here, or in the delegate's didUpdateText method?
//    [self.navigationController popViewControllerAnimated:YES];
    [self returnToMainView];
}

- (void)returnToMainView {
    [self.navigationController popViewControllerAnimated:YES];
}

#pragma mark - UITextField Delegate
-(BOOL)textFieldShouldReturn:(UITextField *)textField {
    [self.textField resignFirstResponder];
    [self.delegate didUpdateText:self.textField.text];
    [self returnToMainView];
    return YES;
}
@end

//
//  DDDDetailViewController.h
//  Passing Data Challenge
//
//  Created by DDD on 2013-11-01.
//  Copyright (c) 2013 DDD. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol DDDDetailViewControllerDelegate <NSObject>

@required
-(void)didUpdateText:(NSString *)aString;

@end

@interface DDDDetailViewController : UIViewController <UITextFieldDelegate>

@property (weak, nonatomic) id <DDDDetailViewControllerDelegate> delegate;
@property (strong, nonatomic) NSString *dataToDisplay;
@property (strong, nonatomic) IBOutlet UILabel *detailLabel;
@property (strong, nonatomic) IBOutlet UITextField *textField;

- (IBAction)updateButtonPressed:(UIButton *)sender;
@end

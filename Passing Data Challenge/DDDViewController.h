//
//  DDDViewController.h
//  Passing Data Challenge
//
//  Created by DDD on 2013-11-01.
//  Copyright (c) 2013 DDD. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DDDDetailViewController.h"

@interface DDDViewController : UIViewController <DDDDetailViewControllerDelegate, UITextFieldDelegate>
@property (strong, nonatomic) IBOutlet UITextField *textField;

@end

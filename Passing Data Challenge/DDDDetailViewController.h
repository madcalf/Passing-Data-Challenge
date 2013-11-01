//
//  DDDDetailViewController.h
//  Passing Data Challenge
//
//  Created by DDD on 2013-11-01.
//  Copyright (c) 2013 DDD. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DDDDetailViewController : UIViewController
@property (strong, nonatomic) NSString *dataToDisplay;
@property (strong, nonatomic) IBOutlet UILabel *detailLabel;

@end

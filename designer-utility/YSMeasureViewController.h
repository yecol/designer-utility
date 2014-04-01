//
//  YSMeasureViewController.h
//  designer-utility
//
//  Created by Yecol Hsu on 4/1/14.
//  Copyright (c) 2014 Yecol Studio. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface YSMeasureViewController : UIViewController

@property (assign, nonatomic) id delegate;
@property (assign, nonatomic) IBOutlet UIScrollView* scroll;

- (IBAction)returnBtnPressed;
- (IBAction)newBtnPressed;

@end

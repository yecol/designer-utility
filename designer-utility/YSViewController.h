//
//  YSViewController.h
//  designer-utility
//
//  Created by Yecol Hsu on 2/28/14.
//  Copyright (c) 2014 Yecol Studio. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "YSCircleViewController.h"

@interface YSViewController : UIViewController<UIScrollViewDelegate>

@property(assign, nonatomic) YSCircleViewController *circleController;

@property(assign, nonatomic) IBOutlet UIButton *portfolioBtn;
@property(assign, nonatomic) IBOutlet UIView *portfolioIndexView;
@property(assign, nonatomic) IBOutlet UIView *porfolioTitleView;

@property(assign, nonatomic) IBOutlet UIView *v1PflView;
@property(assign, nonatomic) IBOutlet UIView *v2PflView;
@property(assign, nonatomic) IBOutlet UIScrollView *v3PflView;
@property(assign, nonatomic) IBOutlet UIScrollView *v4PflView;

- (IBAction)portfolioBtnPressed:(id)sender;
- (IBAction)circleBtnPressed:(id)sender;

@end

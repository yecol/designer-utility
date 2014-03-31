//
//  YSPortfolioViewController.h
//  designer-utility
//
//  Created by Yecol Hsu on 3/29/14.
//  Copyright (c) 2014 Yecol Studio. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface YSPortfolioViewController : UIViewController<UIScrollViewDelegate>


@property(assign,nonatomic) id delegate;
@property(assign,nonatomic) IBOutlet UIScrollView *scroll;

@property(assign,nonatomic) IBOutlet UIImageView *redmengmo;
@property(assign,nonatomic) IBOutlet UIImageView *greenmengmo;

@property(assign,nonatomic) IBOutlet UIView *rapooView;
@property(assign,nonatomic) IBOutlet UIImageView *rapooImage;

@property(assign,nonatomic) IBOutlet UIView *phoenixView;
@property(assign,nonatomic) IBOutlet UIImageView *phoenixImage;

-(IBAction)returnBtnPressed;
@end

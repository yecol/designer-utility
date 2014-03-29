//
//  YSPortfolioViewController.h
//  designer-utility
//
//  Created by Yecol Hsu on 3/29/14.
//  Copyright (c) 2014 Yecol Studio. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface YSPortfolioViewController : UIViewController<UIScrollViewDelegate>


@property(retain,nonatomic) IBOutlet UIScrollView *scroll;

@property(assign,nonatomic) IBOutlet UIImageView *redmengmo;
@property(assign,nonatomic) IBOutlet UIImageView *greenmengmo;


@end

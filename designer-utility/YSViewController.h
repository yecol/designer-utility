//
//  YSViewController.h
//  designer-utility
//
//  Created by Yecol Hsu on 2/28/14.
//  Copyright (c) 2014 Yecol Studio. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface YSViewController : UIViewController<UIScrollViewDelegate>


@property(assign, nonatomic) IBOutlet UIView *portfolioIndexView;

@property(assign, nonatomic) IBOutlet UIView *v1PflView;
@property(assign, nonatomic) IBOutlet UIView *v2PflView;
@property(assign, nonatomic) IBOutlet UIScrollView *v3PflView;
@property(assign, nonatomic) IBOutlet UIScrollView *v4PflView;



@end

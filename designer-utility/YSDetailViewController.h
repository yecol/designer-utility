//
//  YSDetailViewController.h
//  designer-utility
//
//  Created by Yecol Hsu on 4/5/14.
//  Copyright (c) 2014 Yecol Studio. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface YSDetailViewController : UIViewController <UIScrollViewDelegate>

@property (assign, nonatomic) IBOutlet UIScrollView* scroll;
@property (retain, nonatomic) UIPageControl* pageControl;
@property (assign, nonatomic) int pageIndex;
@property (assign, nonatomic) id delegate;

- (IBAction)returnBtnPressed;
- (void)fillViewsWith:(int)index;
@end

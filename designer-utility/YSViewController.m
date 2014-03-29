//
//  YSViewController.m
//  designer-utility
//
//  Created by Yecol Hsu on 2/28/14.
//  Copyright (c) 2014 Yecol Studio. All rights reserved.
//

#import "YSViewController.h"

const int verticalPortfolio = 4;

@interface YSViewController () {

    BOOL isPortfolioOpen;
    CGRect oViewFrame, oBtnFrame, oTitleFrame;
}

- (void)prepareViews;

@end

@implementation YSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    isPortfolioOpen = FALSE;


    [self prepareViews];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareViews
{

    // rapoo
    int rapooCount = 8;
    UIScrollView* scroll1 =
        [[UIScrollView alloc] initWithFrame:CGRectMake(14, 15, 229, 187)];
    scroll1.directionalLockEnabled = YES;
    scroll1.pagingEnabled = YES;
    scroll1.backgroundColor = [UIColor clearColor];
    scroll1.showsVerticalScrollIndicator = NO;
    scroll1.showsHorizontalScrollIndicator = NO;
    scroll1.bounces = NO;

    CGSize newSize = CGSizeMake(scroll1.frame.size.width * rapooCount,
                                scroll1.frame.size.height);
    [scroll1 setContentSize:newSize];

    // Init image views
    for (int i = 0; i < rapooCount; i++) {
        UIImageView* singleGuideView = [[UIImageView alloc]
            initWithFrame:CGRectMake(scroll1.frame.size.width * i, 0.0,
                                     scroll1.frame.size.width,
                                     scroll1.frame.size.height)];
        UIImage* image =
            [UIImage imageNamed:[NSString stringWithFormat:@"ra_%d", i + 1]];
        [singleGuideView setImage:image];
        [scroll1 addSubview:singleGuideView];
    }

    [self.v1PflView addSubview:scroll1];

    // qingting
    int qCount = 3;
    UIScrollView* scroll2 =
        [[UIScrollView alloc] initWithFrame:CGRectMake(14, 215, 228, 92)];
    scroll2.directionalLockEnabled = YES;
    scroll2.pagingEnabled = YES;
    scroll2.backgroundColor = [UIColor clearColor];
    scroll2.showsVerticalScrollIndicator = NO;
    scroll2.showsHorizontalScrollIndicator = NO;
    scroll2.bounces = NO;

    CGSize newSize2 = CGSizeMake(scroll2.frame.size.width * qCount, scroll2.frame.size.height);
    [scroll2 setContentSize:newSize2];

    // Init image views
    for (int i = 0; i < qCount; i++) {
        UIImageView* singleGuideView = [[UIImageView alloc]
            initWithFrame:CGRectMake(scroll2.frame.size.width * i, 0.0,
                                     scroll2.frame.size.width,
                                     scroll2.frame.size.height)];
        UIImage* image =
            [UIImage imageNamed:[NSString stringWithFormat:@"q_%d", i + 1]];
        [singleGuideView setImage:image];
        [scroll2 addSubview:singleGuideView];
    }

    [self.v1PflView addSubview:scroll1];
    [self.v1PflView addSubview:scroll2];
}

- (IBAction)circleBtnPressed:(id)sender
{
}

@end

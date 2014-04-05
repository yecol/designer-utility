//
//  YSDetailViewController.m
//  designer-utility
//
//  Created by Yecol Hsu on 4/5/14.
//  Copyright (c) 2014 Yecol Studio. All rights reserved.
//

#import "YSDetailViewController.h"

@interface YSDetailViewController ()

@end

@implementation YSDetailViewController

- (id)initWithNibName:(NSString*)nibNameOrNil bundle:(NSBundle*)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil
                           bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self fillViewsWith:[self pageIndex]];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)returnBtnPressed
{
    [self.delegate dismissViewControllerAnimated:YES
                                      completion:nil];
}

- (void)fillViewsWith:(int)index
{
    int qCount = 5;
    if (index == 1) {
        qCount = 5;
    } else if (index == 2) {
        qCount = 4;
    } else if (index == 3) {
        qCount = 6;
    }
    CGSize newSize = CGSizeMake(1024 * qCount, 768);
    [self.scroll setContentSize:newSize];

    // Init image views
    for (int i = 0; i < qCount; i++) {
        UIImageView* singleGuideView = [[UIImageView alloc]
            initWithFrame:CGRectMake(1024 * i, 0.0,
                                     1024,
                                     768)];
        UIImage* image =
            [UIImage imageNamed:[NSString stringWithFormat:@"%d-%d", index, i + 1]];
        [singleGuideView setImage:image];
        [self.scroll addSubview:singleGuideView];
    }

    UIPageControl* pageControl = [[UIPageControl alloc] initWithFrame:CGRectMake(0, 748, 1024, 20)];

    [pageControl setUserInteractionEnabled:NO];
    [pageControl setNumberOfPages:qCount];
    [pageControl setCurrentPage:0];
    pageControl.backgroundColor = [UIColor grayColor];

    self.pageControl = pageControl;
    [self.view addSubview:pageControl];
}

- (void)scrollViewDidEndDecelerating:(UIScrollView*)scrollView
{

    int index = fabs(scrollView.contentOffset.x) / 1024;
    {
        [self.pageControl setCurrentPage:index];
    }
}

@end

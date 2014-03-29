//
//  YSPortfolioViewController.m
//  designer-utility
//
//  Created by Yecol Hsu on 3/29/14.
//  Copyright (c) 2014 Yecol Studio. All rights reserved.
//

#import "YSPortfolioViewController.h"

@interface YSPortfolioViewController ()

@end

@implementation YSPortfolioViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{

    [super viewDidLoad];
}

- (void)viewDidAppear:(BOOL)animated{
    
    [self.scroll setContentSize:CGSizeMake(1024, 2000)];
    [self animation1];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)scrollViewDidScroll:(UIScrollView *)scrollView{
    if(scrollView.contentOffset.y>100){
        NSLog(@"aaa depth=%f",scrollView.contentOffset.y);
    }
}

-(void)animation1{
    
    [UIView animateWithDuration:3
                          delay:0
                        options:UIViewAnimationOptionCurveEaseInOut
                     animations:^{
                         CGRect frame = self.greenmengmo.frame;
                         frame.origin.x = 461;
                         self.greenmengmo.frame = frame;
                         
                         frame = self.redmengmo.frame;
                         frame.origin.x = 463;
                         self.redmengmo.frame = frame;
                     }
                     completion:^(BOOL finished) {
                     }];

    
}




@end

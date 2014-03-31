//
//  YSPortfolioViewController.m
//  designer-utility
//
//  Created by Yecol Hsu on 3/29/14.
//  Copyright (c) 2014 Yecol Studio. All rights reserved.
//

#import "YSPortfolioViewController.h"

@interface YSPortfolioViewController ()

-(void)pocketAnimation;
-(void)rapooAnimation;
-(void)phoenixAnimation;

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
    
    [self.scroll setContentSize:CGSizeMake(1024, 2858)];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)scrollViewDidScroll:(UIScrollView *)scrollView{
    if(scrollView.contentOffset.y>self.greenmengmo.frame.origin.y){
        [self pocketAnimation];
    }
    if(scrollView.contentOffset.y>self.rapooImage.frame.origin.y){
        [self rapooAnimation];
    }
    if(scrollView.contentOffset.y>self.phoenixImage.frame.origin.y){
        [self phoenixAnimation];
    }
}

-(void)pocketAnimation{
    
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

-(void)rapooAnimation{
    
    [UIView animateWithDuration:7
                          delay:2
                        options:UIViewAnimationOptionCurveEaseInOut
                     animations:^{
                         CGRect frame = self.rapooImage.frame;
                         frame.origin.x = 0;
                         self.rapooImage.frame = frame;
                         
                         frame = self.rapooView.frame;
                         frame.origin.x = 570;
                         self.rapooView.frame = frame;
                     }
                     completion:^(BOOL finished) {
                     }];
}

-(void)phoenixAnimation{
    
    [UIView animateWithDuration:7
                          delay:3
                        options:UIViewAnimationOptionCurveEaseInOut
                     animations:^{
                         CGRect frame = self.phoenixImage.frame;
                         frame.origin.x = -36;
                         self.phoenixImage.frame = frame;
                         
                         frame = self.phoenixView.frame;
                         frame.origin.x = 61;
                         self.phoenixView.frame = frame;
                     }
                     completion:^(BOOL finished) {
                     }];
}



-(IBAction)returnBtnPressed{
    [self.delegate dismissViewControllerAnimated:YES completion:nil];
}




@end

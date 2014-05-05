//
//  YSViewController.m
//  designer-utility
//
//  Created by Yecol Hsu on 2/28/14.
//  Copyright (c) 2014 Yecol Studio. All rights reserved.
//

#import "YSViewController.h"

@interface YSViewController () {
}
@end

@implementation YSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue*)segue sender:(id)sender
{
    [[segue destinationViewController] setDelegate:self];
}

- (IBAction)lightSwitchPressed
{
    [self.lightMask setHidden:![self.lightMask isHidden]];
    [self.l1 setHidden:![self.l1 isHidden]];
    [self.l2 setHidden:![self.l2 isHidden]];
}

//- (void)beginAnimation
//{
//    [UIView animateWithDuration:2
//        delay:0
//        options:UIViewAnimationOptionCurveEaseInOut
//        animations:^{
//          [self.pocketMask setAlpha:0];
//          CGRect frame = self.pocketMask.frame;
//          frame.origin.x = 100;
//          self.pocketMask.frame = frame;
//        }
//        completion:^(BOOL finished) {}];
//
//    [UIView animateWithDuration:2
//        delay:1
//        options:UIViewAnimationOptionCurveEaseInOut
//        animations:^{
//          [self.pocketMask setAlpha:0];
//          [self.portfolioBtn setAlpha:1];
//          [self.notesBtn setAlpha:1];
//          [self.measureBtn setAlpha:1];
//          [self.colorBtn setAlpha:1];
//        }
//        completion:^(BOOL finished) {}];
//
//    [UIView animateWithDuration:0.5
//        delay:3
//        options:UIViewAnimationOptionCurveEaseInOut
//        animations:^{ [self.lightMask setAlpha:1]; }
//        completion:^(BOOL finished) {}];
//}

- (IBAction)touched
{
    [self touchAnimation];
}

- (IBAction)guideBtnPressed:(id)sender
{
    [self.guideBtn setAlpha:1];
    [self.portfolioBtn setHidden:YES];
    [self.measureBtn setHidden:YES];
    [self.colorBtn setHidden:YES];
    [self.notesBtn setHidden:YES];
}

- (IBAction)guideBtnReleased:(id)sender
{
    [self.guideBtn setAlpha:0];
    [self.portfolioBtn setHidden:NO];
    [self.measureBtn setHidden:NO];
    [self.colorBtn setHidden:NO];
    [self.notesBtn setHidden:NO];
}

- (void)touchAnimation
{
    [UIView animateWithDuration:2
        delay:0
        options:UIViewAnimationOptionCurveEaseInOut
        animations:^{
//                         CGPoint center = self.icon1.center;
            self.icon1.center = CGPointMake(1024/2, 768/2);
            //                         self.pocketMask.frame = frame;
        }
        completion:^(BOOL finished) {}];

    [UIView animateWithDuration:2
        delay:0
        options:UIViewAnimationOptionCurveEaseInOut
        animations:^{
            self.icon2.center = CGPointMake(1024/2, 768/2);
        }
        completion:^(BOOL finished) {}];

    [UIView animateWithDuration:3
        delay:2
        options:UIViewAnimationOptionCurveEaseInOut
        animations:^{
            [self.iconView setAlpha:0];
        }
        completion:^(BOOL finished) {
            [self.iconView removeFromSuperview];
        }];
}

@end

//
//  YSCameraViewController.m
//  designer-utility
//
//  Created by Yecol Hsu on 3/5/14.
//  Copyright (c) 2014 Yecol Studio. All rights reserved.
//

#import "YSCameraViewController.h"

@interface YSCameraViewController () {
  int count;
}

@end

@implementation YSCameraViewController

- (id)initWithNibName:(NSString *)nibNameOrNil
               bundle:(NSBundle *)nibBundleOrNil {
  self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
  if (self) {
    // Custom initialization
  }
  return self;
}

- (void)viewDidLoad {
  [super viewDidLoad];
  count = 0;
  // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

- (IBAction)BtnPressed:(id)sender {

  if (count == 0) {
    [self.btn setImage:[UIImage imageNamed:@"cam-btn-2"]
              forState:UIControlStateNormal];
  } else {

      [UIView animateWithDuration:1
                            delay:0.1
                          options:UIViewAnimationOptionCurveEaseInOut
                       animations:^{
                           CGRect frame = self.frontGreen.frame;
                           frame.origin.y = 768;
                           self.frontGreen.frame = frame;
                           
                           float offsetY = 275;
                           frame = self.backGreen.frame;
                           frame.origin.y = offsetY;
                           self.backGreen.frame = frame;
                           
                           frame = self.btn.frame;
                           frame.origin.y = offsetY - 50;
                           self.btn.frame = frame;
                           [self.btn layer].transform = CATransform3DMakeRotation(-M_PI, 0, 0, 1);
                       }
                       completion:^(BOOL finished) {
        [self.btn setImage:[UIImage imageNamed:@"cam-btn-3"]
                  forState:UIControlStateHighlighted];
        [self.back setHidden:NO];
      }];
  }
  count++;
}

@end

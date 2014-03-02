//
//  YSCircleViewController.m
//  designer-utility
//
//  Created by Yecol Hsu on 3/2/14.
//  Copyright (c) 2014 Yecol Studio. All rights reserved.
//

#import "YSCircleViewController.h"

@interface YSCircleViewController ()

@end

@implementation YSCircleViewController

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
  // Do any additional setup after loading the view.
}

- (IBAction)beginAnimation:(id)sender {

  // Set up path movement
  CAKeyframeAnimation *pathAnimation =
      [CAKeyframeAnimation animationWithKeyPath:@"position"];
  pathAnimation.calculationMode = kCAAnimationPaced;
  pathAnimation.fillMode = kCAFillModeForwards;
  pathAnimation.removedOnCompletion = NO;
  pathAnimation.repeatCount = INFINITY;
  pathAnimation.timingFunction =
      [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
  pathAnimation.duration = 20.0;

  // Create a circle path
  CGMutablePathRef curvedPath = CGPathCreateMutable();
  CGRect circleContainer =
      CGRectMake(20, 30, 800, 400);  // create a circle from this square, it
                                     // could be the frame of an UIView
  CGPathAddEllipseInRect(curvedPath, NULL, circleContainer);
  CAShapeLayer *shaper = [CAShapeLayer layer];
  shaper.path = curvedPath;
  shaper.fillColor = [[UIColor clearColor] CGColor];
  shaper.lineWidth = 1;
  shaper.strokeColor = [[UIColor whiteColor] CGColor];
  [self.view.layer addSublayer:shaper];

  pathAnimation.path = curvedPath;
  CGPathRelease(curvedPath);

  UIImageView *imageView =
      [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
  [imageView setImage:[UIImage imageNamed:@"avatar"]];
  [imageView.layer addAnimation:pathAnimation forKey:@"myCircleAnimation"];
  [self.view addSubview:imageView];

  //[self.avatarView.layer addAnimation:pathAnimation
  // forKey:@"myCircleAnimation"];
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

@end

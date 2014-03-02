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
  [self drawCircles];
  // Do any additional setup after loading the view.
}

- (IBAction)beginAnimation:(id)sender {
}

- (void)drawCircles {

  // Set up path movement
  CAKeyframeAnimation *pathAnimation =
      [CAKeyframeAnimation animationWithKeyPath:@"position"];
  pathAnimation.calculationMode = kCAAnimationPaced;
  pathAnimation.fillMode = kCAFillModeForwards;
  pathAnimation.removedOnCompletion = NO;
  pathAnimation.repeatCount = INFINITY;
  pathAnimation.timingFunction =
      [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
  pathAnimation.duration = 10.0;

  // Create a circle path
  CGMutablePathRef curvedPath = CGPathCreateMutable();
  CGRect container = CGRectMake(600, 77, 6, 6);
  CGPathAddRect(curvedPath, NULL, container);

  pathAnimation.path = curvedPath;

  UIImageView *imageView =
      [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 70, 70)];
  [imageView setImage:[UIImage imageNamed:@"ball1"]];
  [imageView.layer addAnimation:pathAnimation forKey:@"myCircleAnimation"];
  [self.view addSubview:imageView];

  ///////////////////////////////////////////////////////////////////////////////////////////circle1
  // Set up path movement
  CAKeyframeAnimation *pathAnimation2 =
      [CAKeyframeAnimation animationWithKeyPath:@"position"];
  pathAnimation2.calculationMode = kCAAnimationPaced;
  pathAnimation2.fillMode = kCAFillModeForwards;
  pathAnimation2.removedOnCompletion = NO;
  pathAnimation2.repeatCount = INFINITY;
  pathAnimation2.timingFunction =
      [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
  pathAnimation2.duration = 12.0;

  // Create a circle path
  CGMutablePathRef curvedPath2 = CGPathCreateMutable();
  CGRect circleContainer2 =
      CGRectMake(655, 274, 8, 8);  // create a circle from this square, it
  // could be the frame of an UIView
  CGPathAddRect(curvedPath2, NULL, circleContainer2);
  pathAnimation2.path = curvedPath2;

  UIImageView *imageView2 =
      [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 130, 130)];
  [imageView2 setImage:[UIImage imageNamed:@"ball2"]];
  [imageView2.layer addAnimation:pathAnimation2 forKey:@"myCircleAnimation"];
  [self.view addSubview:imageView2];

  ///////////////////////////////////////////////////////////////////////////////////////////circle1
  // Set up path movement
  CAKeyframeAnimation *pathAnimation3 =
      [CAKeyframeAnimation animationWithKeyPath:@"position"];
  pathAnimation3.calculationMode = kCAAnimationPaced;
  pathAnimation3.fillMode = kCAFillModeForwards;
  pathAnimation3.removedOnCompletion = NO;
  pathAnimation3.repeatCount = INFINITY;
  pathAnimation3.timingFunction =
      [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
  pathAnimation3.duration = 15.0;

  // Create a circle path
  CGMutablePathRef curvedPath3 = CGPathCreateMutable();
  CGRect circleContainer3 =
      CGRectMake(799, 382, 10, 10);  // create a circle from this square, it
  // could be the frame of an UIView
  CGPathAddRect(curvedPath3, NULL, circleContainer3);
  pathAnimation3.path = curvedPath3;

  UIImageView *imageView3 =
      [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 87, 87)];
  [imageView3 setImage:[UIImage imageNamed:@"ball3"]];
  [imageView3.layer addAnimation:pathAnimation3 forKey:@"myCircleAnimation"];
  [self.view addSubview:imageView3];

  ///////////////////////////////////////////////////////////////////////////////////////////circle1
  // Set up path movement
  CAKeyframeAnimation *pathAnimation4 =
      [CAKeyframeAnimation animationWithKeyPath:@"position"];
  pathAnimation4.calculationMode = kCAAnimationPaced;
  pathAnimation4.fillMode = kCAFillModeForwards;
  pathAnimation4.removedOnCompletion = NO;
  pathAnimation4.repeatCount = INFINITY;
  pathAnimation4.timingFunction =
      [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
  pathAnimation4.duration = 6.0;

  // Create a circle path
  CGMutablePathRef curvedPath4 = CGPathCreateMutable();
  CGRect circleContainer4 =
      CGRectMake(418, 517, 4, 4);  // create a circle from this square, it
  // could be the frame of an UIView
  CGPathAddRect(curvedPath4, NULL, circleContainer4);
  pathAnimation4.path = curvedPath4;

  UIImageView *imageView4 =
      [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 70, 70)];
  [imageView4 setImage:[UIImage imageNamed:@"ball4"]];
  [imageView4.layer addAnimation:pathAnimation4 forKey:@"myCircleAnimation"];
  [self.view addSubview:imageView4];

  ///////////////////////////////////////////////////////////////////////////////////////////circle1
  // Set up path movement
  CAKeyframeAnimation *pathAnimation5 =
      [CAKeyframeAnimation animationWithKeyPath:@"position"];
  pathAnimation5.calculationMode = kCAAnimationPaced;
  pathAnimation5.fillMode = kCAFillModeForwards;
  pathAnimation5.removedOnCompletion = NO;
  pathAnimation5.repeatCount = INFINITY;
  pathAnimation5.timingFunction =
      [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
  pathAnimation5.duration = 16.0;

  // Create a circle path
  CGMutablePathRef curvedPath5 = CGPathCreateMutable();
  CGRect circleContainer5 =
      CGRectMake(243, 487, 7, 7);  // create a circle from this square, it
  // could be the frame of an UIView
  CGPathAddRect(curvedPath5, NULL, circleContainer5);
  pathAnimation5.path = curvedPath5;

  UIImageView *imageView5 =
      [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 56, 56)];
  [imageView5 setImage:[UIImage imageNamed:@"ball5"]];
  [imageView5.layer addAnimation:pathAnimation5 forKey:@"myCircleAnimation"];
  [self.view addSubview:imageView5];
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

@end

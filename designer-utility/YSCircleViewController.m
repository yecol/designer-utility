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

const float animationDuration = 1;

@implementation YSCircleViewController {
  int step;
}

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
  step = 0;
  // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

- (IBAction)PocketWordingIn {
  [UIView animateWithDuration:animationDuration
                        delay:0.1
                      options:UIViewAnimationOptionCurveEaseInOut
                   animations:^{
                                CGRect frame = self.wordingView.frame;
                                frame.origin.y = 530;
                                [self.wordingView setFrame:frame];
                              }
                   completion:^(BOOL finished) {}];
}

- (IBAction)ScenesIn {
  [UIView animateWithDuration:animationDuration
                        delay:0.1
                      options:UIViewAnimationOptionCurveEaseInOut
                   animations:^{
                                CGRect frame = self.scenesView.frame;
                                frame.origin.y = 0;
                                [self.scenesView setFrame:frame];
                              }
                   completion:^(BOOL finished) {}];
}

- (void)nextBtnPressed:(id)sender {

  [sender setEnabled:NO];

  if (step == 0) {
    [UIView animateWithDuration:animationDuration
                          delay:0.1
                        options:UIViewAnimationOptionCurveEaseInOut
                     animations:^{
                                  CGRect frame = self.scene1View.frame;
                                  frame.origin.y = -768;
                                  [self.scene1View setFrame:frame];

                                  frame = self.scene2Image.frame;
                                  frame.origin.y = 26;
                                  [self.scene2Image setFrame:frame];
                                }
                     completion:^(BOOL finished) {
      [UIView animateWithDuration:animationDuration
                            delay:0.1
                          options:UIViewAnimationOptionCurveEaseInOut
                       animations:^{
                                    CGRect frame =
                                        self.scene2PocketWording.frame;
                                    frame.origin.y = 470;
                                    [self.scene2PocketWording setFrame:frame];

                                    frame = self.scene2LeftView.frame;
                                    frame.origin.x = 68;
                                    [self.scene2LeftView setFrame:frame];

                                    frame = self.scene2RightView.frame;
                                    frame.origin.x = 698;
                                    [self.scene2RightView setFrame:frame];
                                  }
                       completion:^(BOOL finished) {}];
    }];
  } else if (step == 1) {

    [UIView animateWithDuration:animationDuration
                          delay:0.1
                        options:UIViewAnimationOptionCurveEaseInOut
                     animations:
                         ^{

                           CGRect frame = self.scene2LeftView.frame;
                           frame.origin.y = -768;
                           [self.scene2LeftView setFrame:frame];

                           frame = self.scene2RightView.frame;
                           frame.origin.y = -768;
                           [self.scene2RightView setFrame:frame];

                           frame = self.scene2Image.frame;
                           frame.origin.y = -768;
                           [self.scene2Image setFrame:frame];

                           frame = self.scene3wave.frame;
                           frame.origin.y = 40;
                           [self.scene3wave setFrame:frame];

                           CABasicAnimation *animation = [CABasicAnimation
                               animationWithKeyPath:@"transform.rotation.z"];
                           animation.duration = 1;
                           animation.additive = YES;
                           animation.removedOnCompletion = NO;
                           animation.fillMode = kCAFillModeForwards;
                           animation.fromValue = [NSNumber numberWithFloat:0];
                           animation.toValue =
                               [NSNumber numberWithFloat:-M_PI_2];
                           [self.scene2PocketWording.layer
                               addAnimation:animation
                                     forKey:@"90rotation"];

                           frame = self.scene2PocketWording.frame;
                           frame.origin.y = 120;
                           [self.scene2PocketWording setFrame:frame];
                         }
                     completion:^(BOOL finished) {}];
  } else if (step == 2) {
    [UIView animateWithDuration:animationDuration
                          delay:0.1
                        options:UIViewAnimationOptionCurveEaseInOut
                     animations:^{

                                  CGRect frame = self.scene4Pocket.frame;
                                  frame.origin.y = 155;
                                  [self.scene4Pocket setFrame:frame];

                                  frame = self.scene3wave.frame;
                                  frame.origin.y = -768;
                                  [self.scene3wave setFrame:frame];
                                }
                     completion:^(BOOL finished) {}];
  } else if (step == 3) {
    [UIView animateWithDuration:animationDuration
                          delay:0.1
                        options:UIViewAnimationOptionCurveEaseInOut
                     animations:^{
                                  [self.scene4Pocket setAlpha:0];
                                  [self.scene2PocketWording setAlpha:0];
                                }
                     completion:^(BOOL finished) {
      [UIView animateWithDuration:animationDuration
                            delay:0.1
                          options:UIViewAnimationOptionCurveEaseInOut
                       animations:^{ [self.scene5PocketV setAlpha:1]; }
                       completion:^(BOOL finished) {}];
    }];
  } else if (step == 4) {
    [self.scene6center setAlpha:1];
    [UIView animateWithDuration:animationDuration
                          delay:0.1
                        options:UIViewAnimationOptionCurveEaseInOut
                     animations:^{

                                  CGRect frame = self.scene5PocketV.frame;
                                  frame.origin.y = 100;
                                  [self.scene5PocketV setFrame:frame];

                                  [self.scene6center layer].transform =
                                      CATransform3DMakeScale(2, 2, 1);

                                  [self.i1 setCenter:CGPointMake(731, 375)];
                                  [self.i2 setCenter:CGPointMake(626, 306)];
                                  [self.i3 setCenter:CGPointMake(476, 319)];
                                  [self.i4 setCenter:CGPointMake(420, 457)];
                                  [self.i5 setCenter:CGPointMake(641, 468)];
                                  [self.i6 setCenter:CGPointMake(613, 392)];
                                  [self.i7 setCenter:CGPointMake(700, 405)];
                                  [self.i8 setCenter:CGPointMake(640, 530)];
                                  [self.i9 setCenter:CGPointMake(399, 358)];
                                  [self.i10 setCenter:CGPointMake(475, 524)];
                                  [self.i11 setCenter:CGPointMake(573, 483)];
                                  [self.i12 setCenter:CGPointMake(615, 450)];
                                  [self.i13 setCenter:CGPointMake(531, 385)];
                                  [self.i14 setCenter:CGPointMake(476, 504)];
                                  [self.i15 setCenter:CGPointMake(484, 450)];
                                  [self.i16 setCenter:CGPointMake(536, 410)];
                                  [self.i17 setCenter:CGPointMake(630, 398)];
                                  [self.i18 setCenter:CGPointMake(615, 438)];
                                  [self.i19 setCenter:CGPointMake(626, 454)];

                                  [self.w1 setCenter:CGPointMake(348, 488)];
                                  [self.w2 setCenter:CGPointMake(410, 414)];
                                  [self.w3 setCenter:CGPointMake(425, 511)];
                                  [self.w4 setCenter:CGPointMake(434, 323)];
                                  [self.w5 setCenter:CGPointMake(621, 349)];
                                  [self.w6 setCenter:CGPointMake(623, 367)];
                                  [self.w7 setCenter:CGPointMake(657, 429)];
                                  [self.w8 setCenter:CGPointMake(665, 507)];
                                  [self.w9 setCenter:CGPointMake(675, 315)];
                                  [self.w10 setCenter:CGPointMake(731, 461)];
                                }
                     completion:^(BOOL finished) {}];
  }

  step++;
  [sender setEnabled:YES];
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
  [self.bgView addSubview:imageView];

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
  [self.bgView addSubview:imageView2];

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
  [self.bgView addSubview:imageView3];

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
  [self.bgView addSubview:imageView4];

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
  [self.bgView addSubview:imageView5];
}

@end

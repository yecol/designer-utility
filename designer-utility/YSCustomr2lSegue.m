//
//  YSCustomr2lSegue.m
//  designer-utility
//
//  Created by Yecol Hsu on 3/2/14.
//  Copyright (c) 2014 Yecol Studio. All rights reserved.
//

#import "YSCustomr2lSegue.h"

@implementation YSCustomr2lSegue

- (void)perform {

  UIViewController *sourceViewController =
      (UIViewController *)[self sourceViewController];
  UIViewController *destinationController =
      (UIViewController *)[self destinationViewController];

  CATransition *transition = [CATransition animation];
  transition.duration = 0.5;
  transition.timingFunction = [CAMediaTimingFunction
      functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
  transition.type =
      kCATransitionMoveIn;  // kCATransitionMoveIn; //, kCATransitionPush,
                            // kCATransitionReveal, kCATransitionFade
  transition.subtype = kCATransitionFromBottom;  // kCATransitionFromLeft,
                                                 // kCATransitionFromRight,
  // kCATransitionFromTop, kCATransitionFromBottom

  [destinationController.view.layer addAnimation:transition
                                          forKey:kCATransition];
  [sourceViewController presentViewController:destinationController
                                     animated:NO
                                   completion:nil];
}

@end

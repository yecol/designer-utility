//
//  YSCircleViewController.h
//  designer-utility
//
//  Created by Yecol Hsu on 3/2/14.
//  Copyright (c) 2014 Yecol Studio. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface YSCircleViewController : UIViewController

@property(assign, nonatomic) IBOutlet UIView *bgView;
@property(assign, nonatomic) IBOutlet UIView *scenesView;
@property(assign, nonatomic) IBOutlet UIImageView *scene1View;
@property(assign, nonatomic) IBOutlet UIImageView *scene2Image;
@property(assign, nonatomic) IBOutlet UIImageView *scene2LeftView;
@property(assign, nonatomic) IBOutlet UIImageView *scene2RightView;
@property(assign, nonatomic) IBOutlet UIImageView *scene2PocketWording;
@property(assign, nonatomic) IBOutlet UIImageView *scene3wave;
@property(assign, nonatomic) IBOutlet UIImageView *scene4Pocket;
@property(assign, nonatomic) IBOutlet UIImageView *scene5PocketV;
@property(assign, nonatomic) IBOutlet UIImageView *scene6center;

@property(assign, nonatomic) IBOutlet UIImageView *i1;
@property(assign, nonatomic) IBOutlet UIImageView *i2;
@property(assign, nonatomic) IBOutlet UIImageView *i3;
@property(assign, nonatomic) IBOutlet UIImageView *i4;
@property(assign, nonatomic) IBOutlet UIImageView *i5;
@property(assign, nonatomic) IBOutlet UIImageView *i6;
@property(assign, nonatomic) IBOutlet UIImageView *i7;
@property(assign, nonatomic) IBOutlet UIImageView *i8;
@property(assign, nonatomic) IBOutlet UIImageView *i9;
@property(assign, nonatomic) IBOutlet UIImageView *i10;
@property(assign, nonatomic) IBOutlet UIImageView *i11;
@property(assign, nonatomic) IBOutlet UIImageView *i12;
@property(assign, nonatomic) IBOutlet UIImageView *i13;
@property(assign, nonatomic) IBOutlet UIImageView *i14;
@property(assign, nonatomic) IBOutlet UIImageView *i15;
@property(assign, nonatomic) IBOutlet UIImageView *i16;
@property(assign, nonatomic) IBOutlet UIImageView *i17;
@property(assign, nonatomic) IBOutlet UIImageView *i18;
@property(assign, nonatomic) IBOutlet UIImageView *i19;

@property(assign, nonatomic) IBOutlet UIImageView *w1;
@property(assign, nonatomic) IBOutlet UIImageView *w2;
@property(assign, nonatomic) IBOutlet UIImageView *w3;
@property(assign, nonatomic) IBOutlet UIImageView *w4;
@property(assign, nonatomic) IBOutlet UIImageView *w5;
@property(assign, nonatomic) IBOutlet UIImageView *w6;
@property(assign, nonatomic) IBOutlet UIImageView *w7;
@property(assign, nonatomic) IBOutlet UIImageView *w8;
@property(assign, nonatomic) IBOutlet UIImageView *w9;
@property(assign, nonatomic) IBOutlet UIImageView *w10;

@property(assign, nonatomic) IBOutlet UIView *wordingView;

- (IBAction)PocketWordingIn;
- (IBAction)ScenesIn;
- (IBAction)nextBtnPressed:(id)sender;

@end

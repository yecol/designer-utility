//
//  YSCameraViewController.h
//  designer-utility
//
//  Created by Yecol Hsu on 3/5/14.
//  Copyright (c) 2014 Yecol Studio. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface YSCameraViewController : UIViewController

@property(assign, nonatomic) IBOutlet UIImageView *backGreen;
@property(assign, nonatomic) IBOutlet UIImageView *frontGreen;
@property(assign, nonatomic) IBOutlet UIButton *btn;
@property(assign, nonatomic) IBOutlet UIButton *back;

- (IBAction)BtnPressed:(id)sender;

@end

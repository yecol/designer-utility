//
//  YSColorTakerViewController.h
//  designer-utility
//
//  Created by Yecol Hsu on 3/5/14.
//  Copyright (c) 2014 Yecol Studio. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface YSColorTakerViewController : UIViewController <UINavigationControllerDelegate, UIImagePickerControllerDelegate>

@property (assign, nonatomic) id delegate;

@property (nonatomic, assign) IBOutlet UIView* canvesView;
@property (nonatomic, assign) IBOutlet UIImageView* v;
@property (nonatomic, assign) IBOutlet UIImageView* h;
@property (nonatomic, assign) IBOutlet UIImageView* c;

@property (nonatomic, assign) IBOutlet UIImageView* pictureView;
@property (nonatomic, assign) IBOutlet UIScrollView* scroll;

@property (nonatomic, assign) IBOutlet UIView* addedView;
@property (nonatomic, retain) IBOutlet UIImageView* addedPicture;

- (IBAction)returnBtnPressed;
- (IBAction)albumBtnPressed;
- (void)chooseColor:(id)sender;
- (void)getColor:(id)sender;
@end

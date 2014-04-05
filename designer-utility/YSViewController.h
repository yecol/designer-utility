//
//  YSViewController.h
//  designer-utility
//
//  Created by Yecol Hsu on 2/28/14.
//  Copyright (c) 2014 Yecol Studio. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface YSViewController : UIViewController <UIScrollViewDelegate>

@property (nonatomic, retain) IBOutlet UIButton* portfolioBtn;
@property (nonatomic, retain) IBOutlet UIButton* colorBtn;
@property (nonatomic, retain) IBOutlet UIButton* notesBtn;
@property (nonatomic, retain) IBOutlet UIButton* measureBtn;

@property (nonatomic, retain) IBOutlet UIView* pocketMask;
@property (nonatomic, retain) IBOutlet UIView* lightMask;
@property (nonatomic, retain) IBOutlet UILabel* l2;
@property (nonatomic, retain) IBOutlet UILabel* l1;
@property (nonatomic, retain) IBOutlet UIButton* lightSwitch;

- (IBAction)lightSwitchPressed;
- (IBAction)panelBtnPressed:(id)sender;

@end

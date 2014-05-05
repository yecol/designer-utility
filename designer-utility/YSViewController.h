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

@property (nonatomic, retain) IBOutlet UIButton* icon2;
@property (nonatomic, retain) IBOutlet UIButton* icon1;
@property (nonatomic, retain) IBOutlet UIView* iconView;

@property (nonatomic, retain) IBOutlet UIButton* guideBtn;

@property (nonatomic, retain) IBOutlet UIView* pocketMask;
@property (nonatomic, retain) IBOutlet UIView* lightMask;
@property (nonatomic, retain) IBOutlet UILabel* l2;
@property (nonatomic, retain) IBOutlet UILabel* l1;
@property (nonatomic, retain) IBOutlet UIButton* lightSwitch;

- (IBAction)lightSwitchPressed;
- (IBAction)touched;
- (IBAction)panelBtnPressed:(id)sender;
- (IBAction)guideBtnPressed:(id)sender;
- (IBAction)guideBtnReleased:(id)sender;

@end

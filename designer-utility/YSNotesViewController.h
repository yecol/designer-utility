//
//  YSNotesViewController.h
//  designer-utility
//
//  Created by Yecol Hsu on 4/1/14.
//  Copyright (c) 2014 Yecol Studio. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface YSNotesViewController : UIViewController

@property (assign, nonatomic) id delegate;
@property (assign, nonatomic) IBOutlet UITextField* field;

- (IBAction)returnBtnPressed;
- (IBAction)resetPressed;

@end

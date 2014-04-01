//
//  YSMeasureViewController.m
//  designer-utility
//
//  Created by Yecol Hsu on 4/1/14.
//  Copyright (c) 2014 Yecol Studio. All rights reserved.
//

#import "YSMeasureViewController.h"

@interface YSMeasureViewController ()

@end

@implementation YSMeasureViewController

- (id)initWithNibName:(NSString*)nibNameOrNil bundle:(NSBundle*)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil
                           bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.scroll setContentSize:CGSizeMake(544, 2484)];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)returnBtnPressed
{
    [self.delegate dismissViewControllerAnimated:YES
                                      completion:nil];
}

- (void)newBtnPressed
{
    [self.scroll scrollRectToVisible:CGRectMake(0, 1700, 544, 780)
                            animated:YES];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

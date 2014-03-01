//
//  YSViewController.m
//  designer-utility
//
//  Created by Yecol Hsu on 2/28/14.
//  Copyright (c) 2014 Yecol Studio. All rights reserved.
//

#import "YSViewController.h"

const int verticalPortfolio = 4;

@interface YSViewController (){
    
    BOOL isPortfolioOpen;
    CGRect oViewFrame, oBtnFrame;
}

@end

@implementation YSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    isPortfolioOpen = FALSE;
    
    [self.view bringSubviewToFront:self.portfolioBtn];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)portfolioBtnPressed:(id)sender{
    
    //portfolio index view animation
    
    float bannerHeight = 68;
    
    if (!isPortfolioOpen) {
        
        oViewFrame = self.portfolioIndexView.frame;
        oBtnFrame = self.portfolioBtn.frame;
        
        [UIView animateWithDuration:2
                              delay:0.1
                            options: UIViewAnimationOptionCurveEaseInOut
                         animations:^
         {
             CGRect viewFrame = oViewFrame;
             viewFrame.origin.y = bannerHeight;
             self.portfolioIndexView.frame = viewFrame;
             
             CGRect avatarFrame = oBtnFrame;
             avatarFrame.origin.y = -20;
             self.portfolioBtn.frame = avatarFrame;
             
             [self.portfolioBtn layer].transform = CATransform3DMakeScale(0.5,0.5,1);
         }
                         completion:^(BOOL finished)
         {
             [self.portfolioBtn setImage:[UIImage imageNamed:@"avatar_down"] forState:UIControlStateHighlighted];
             isPortfolioOpen = TRUE;
             
             [self.hPflView setContentSize:CGSizeMake(1131, 700)];
             
             [self.v3PflView setContentSize:CGSizeMake(267, 1026)];
             [self.v4PflView setContentSize:CGSizeMake(267, 912)];
         }];
        
    }else{
        [UIView animateWithDuration:2
                              delay:0.1
                            options: UIViewAnimationOptionCurveEaseInOut
                         animations:^
         {
             self.portfolioIndexView.frame = oViewFrame;
             
             [self.portfolioBtn layer].transform = CATransform3DMakeScale(1,1,1);
             self.portfolioBtn.frame = oBtnFrame;
         }
                         completion:^(BOOL finished)
         {
             [self.portfolioBtn setImage:[UIImage imageNamed:@"avatar_up"] forState:UIControlStateHighlighted];
             isPortfolioOpen = FALSE;
         }];
    }
    

}

@end

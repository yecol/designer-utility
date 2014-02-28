//
//  YSViewController.m
//  designer-utility
//
//  Created by Yecol Hsu on 2/28/14.
//  Copyright (c) 2014 Yecol Studio. All rights reserved.
//

#import "YSViewController.h"

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
    
    [self.hPflView setScrollEnabled:YES];
    [self.hPflView setContentSize:CGSizeMake(2000, 700)];
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
        
        NSLog(@"oBtnFramex=%f,y=%f,w=%f,h=%f",oBtnFrame.origin.x,oBtnFrame.origin.y,oBtnFrame.size.width,oBtnFrame.size.height);
        
        [UIView animateWithDuration:0.5
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
         }];
        
    }else{
        [UIView animateWithDuration:0.5
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

-(void)beginIndexPageAnimation{
    NSLog(@"begin Index Animation");
}

-(void)scrollViewDidScrollToTop:(UIScrollView *)scrollView{
    NSLog(@"1");
}
-(void)scrollViewDidScroll:(UIScrollView *)scrollView{
    NSLog(@"111");
}

@end

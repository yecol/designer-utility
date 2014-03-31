//
//  YSColorTakerViewController.m
//  designer-utility
//
//  Created by Yecol Hsu on 3/5/14.
//  Copyright (c) 2014 Yecol Studio. All rights reserved.
//

#import "YSColorTakerViewController.h"
#import "UIImagePickerController+OrientationFix.h"

@interface YSColorTakerViewController ()

- (void)update:(CGPoint)point;

@end

@implementation YSColorTakerViewController

- (id)initWithNibName:(NSString *)nibNameOrNil
               bundle:(NSBundle *)nibBundleOrNil {
  self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
  if (self) {
    // Custom initialization
  }
  return self;
}

- (void)viewDidLoad {
  [super viewDidLoad];
[self.scroll setContentSize:CGSizeMake(230, 1941)];
  // Do any additional setup after loading the view.
}

-(BOOL)shouldAutorotate
{
    return YES;
}

-(NSUInteger)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskLandscapeLeft | UIInterfaceOrientationMaskLandscapeRight;
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
  UITouch *touch = [touches anyObject];
  CGPoint ptTouch = [touch locationInView:self.canvesView];

  [self update:ptTouch];
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
  UITouch *touch = [touches anyObject];
  CGPoint ptTouch = [touch locationInView:self.canvesView];

  [self update:ptTouch];
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
  UITouch *touch = [touches anyObject];
  CGPoint ptTouch = [touch locationInView:self.canvesView];

  [self update:ptTouch];
}

- (void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event {
  UITouch *touch = [touches anyObject];
  CGPoint ptTouch = [touch locationInView:self.canvesView];
  [self update:ptTouch];
}

- (void)update:(CGPoint)point {

  if (point.x < 10 || point.x > 615 || point.y > 913) return;

  float temp = point.x;
  point.x = 913 - point.y;
  point.y = temp;

  NSLog(@"x=%f,y=%f", point.x, point.y);

  CGPoint center = self.v.center;
  center.x = point.x;
  self.v.center = center;

  center = self.h.center;
  center.y = point.y;
  self.h.center = center;

  self.c.center = point;
}

-(IBAction)returnBtnPressed{
    [self.delegate dismissViewControllerAnimated:YES completion:nil];
}

-(IBAction)albumBtnPressed{
    UIImagePickerController *imagePicker = [[UIImagePickerController alloc] init];
    imagePicker.delegate = self;
    imagePicker.allowsEditing = YES;
    imagePicker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    [self presentViewController:imagePicker animated:YES completion:nil];
}


- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info {
    
    [picker dismissModalViewControllerAnimated:YES];
    UIImage* originalImage = nil;
    originalImage = [info objectForKey:UIImagePickerControllerEditedImage];
    if(originalImage==nil)
    {
        originalImage = [info objectForKey:UIImagePickerControllerOriginalImage];
    }
    
    [self.addedPicture setImage:originalImage];
    //At this point you have the selected image in originalImage
}



@end

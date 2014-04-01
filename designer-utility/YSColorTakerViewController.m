//
//  YSColorTakerViewController.m
//  designer-utility
//
//  Created by Yecol Hsu on 3/5/14.
//  Copyright (c) 2014 Yecol Studio. All rights reserved.
//

#import "YSColorTakerViewController.h"
#import "UIImagePickerController+OrientationFix.h"

@interface YSColorTakerViewController () {
    NSMutableArray* array;
    NSMutableArray* grayArray;
    UIButton* btnToColor;
    CGPoint cPoint;
}

- (void)update:(CGPoint)point;

@end

@implementation YSColorTakerViewController

- (id)initWithNibName:(NSString*)nibNameOrNil
               bundle:(NSBundle*)nibBundleOrNil
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
    array = [NSMutableArray array];
    grayArray = [NSMutableArray array];
    [self makeButsOnScroll];
    [self makeButsOnAddedView];
    [self.scroll setContentSize:CGSizeMake(230, 2200)];
    // Do any additional setup after loading the view.
}

- (BOOL)shouldAutorotate
{
    return YES;
}

- (NSUInteger)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskLandscapeLeft | UIInterfaceOrientationMaskLandscapeRight;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesBegan:(NSSet*)touches withEvent:(UIEvent*)event
{
    UITouch* touch = [touches anyObject];
    CGPoint ptTouch = [touch locationInView:self.canvesView];

    [self update:ptTouch];
}

- (void)touchesMoved:(NSSet*)touches withEvent:(UIEvent*)event
{
    UITouch* touch = [touches anyObject];
    CGPoint ptTouch = [touch locationInView:self.canvesView];

    [self update:ptTouch];
}

- (void)touchesEnded:(NSSet*)touches withEvent:(UIEvent*)event
{
    UITouch* touch = [touches anyObject];
    CGPoint ptTouch = [touch locationInView:self.canvesView];

    [self update:ptTouch];
}

- (void)touchesCancelled:(NSSet*)touches withEvent:(UIEvent*)event
{
    UITouch* touch = [touches anyObject];
    CGPoint ptTouch = [touch locationInView:self.canvesView];
    [self update:ptTouch];
}

- (void)update:(CGPoint)point
{

    if (point.x < 0 || point.y < 0 || point.x > 737 || point.y > 491)
        return;

    CGPoint center = self.v.center;
    center.x = point.x;
    self.v.center = center;

    center = self.h.center;
    center.y = point.y;
    self.h.center = center;

    self.c.center = point;
    cPoint = point;
    UIColor* c = [[self class] getRGBAsFromImage:[self.addedPicture image]
                                             atX:cPoint.x
                                            andY:cPoint.y];
    [btnToColor setBackgroundColor:c];
}

- (void)makeButsOnScroll
{
    float offsetX = 50;
    float offsetY = 10;
    float square = 137;
    float padding = 15;

    for (int i = 1; i <= 13; i++) {
        UIButton* btn = [UIButton buttonWithType:UIButtonTypeCustom];
        [btn setFrame:CGRectMake(offsetX, offsetY + (square + padding) * (i - 1),
                                 square, square)];
        [btn setImage:[UIImage imageNamed:[NSString stringWithFormat:@"%d-o", i]]
             forState:UIControlStateNormal];
        [btn setImage:[UIImage imageNamed:[NSString stringWithFormat:@"%d-c", i]]
             forState:UIControlStateHighlighted];
        [btn setImage:[UIImage imageNamed:[NSString stringWithFormat:@"%d-c", i]]
             forState:UIControlStateSelected];

        [btn setTag:i];
        [btn addTarget:self
                      action:@selector(chooseColor:)
            forControlEvents:UIControlEventTouchUpInside];

        [self.scroll addSubview:btn];
        [array addObject:btn];
    }
}

- (void)chooseColor:(id)sender
{
    UIButton* btn = (UIButton*)sender;

    for (UIButton* b in array) {
        [b setSelected:NO];
    }

    [btn setSelected:YES];
    [self.addedView setHidden:YES];
    [self.pictureView setImage:[UIImage imageNamed:[NSString stringWithFormat:@"%ld_03", btn.tag]]];
}

- (void)getColor:(id)sender
{
    for (UIButton* btn in grayArray) {
        [btn setSelected:NO];
    }

    UIButton* btn = (UIButton*)sender;
    [btn setSelected:YES];
    btnToColor = btn;
    UIColor* c = [[self class] getRGBAsFromImage:[self.addedPicture image]
                                             atX:cPoint.x
                                            andY:cPoint.y];
    [btn setBackgroundColor:c];
}

- (void)makeButsOnAddedView
{
    int grays[] = {
        0,
        202,
        177,
        151,
        128,
        102
    };

    for (int i = 1; i <= 5; i++) {
        UIButton* btn = [UIButton buttonWithType:UIButtonTypeCustom];
        [btn setFrame:CGRectMake(0, 99 * (i - 1),
                                 40, 99)];

        [btn setBackgroundColor:[UIColor colorWithRed:grays[i] / 255.0
                                                green:grays[i] / 255.0
                                                 blue:grays[i] / 255.0
                                                alpha:1]];

        [btn setImage:[UIImage imageNamed:@"point"]
             forState:UIControlStateSelected];

        [btn addTarget:self
                      action:@selector(getColor:)
            forControlEvents:UIControlEventTouchUpInside];

        [self.addedView addSubview:btn];
        [grayArray addObject:btn];
    }
}

- (IBAction)returnBtnPressed
{
    [self.delegate dismissViewControllerAnimated:YES
                                      completion:nil];
}

- (IBAction)albumBtnPressed
{
    UIImagePickerController* imagePicker = [[UIImagePickerController alloc] init];
    imagePicker.delegate = self;
    imagePicker.allowsEditing = YES;
    imagePicker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    [self presentViewController:imagePicker
                       animated:YES
                     completion:nil];
}

- (void)imagePickerController:(UIImagePickerController*)picker
    didFinishPickingMediaWithInfo:(NSDictionary*)info
{
    [self.addedView setHidden:NO];

    [picker dismissViewControllerAnimated:YES
                               completion:nil];
    UIImage* originalImage = nil;
    originalImage = [info objectForKey:UIImagePickerControllerEditedImage];
    if (originalImage == nil) {
        originalImage = [info objectForKey:UIImagePickerControllerOriginalImage];
    }

    [self.addedPicture setImage:originalImage];
    // At this point you have the selected image in originalImage
}

+ (UIColor*)getRGBAsFromImage:(UIImage*)image atX:(int)xx andY:(int)yy
{
    //NSMutableArray* result = [NSMutableArray arrayWithCapacity:count];

    // First get the image into your data buffer
    CGImageRef imageRef = [image CGImage];
    NSUInteger width = CGImageGetWidth(imageRef);
    NSUInteger height = CGImageGetHeight(imageRef);
    CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
    unsigned char* rawData = (unsigned char*)calloc(height * width * 4, sizeof(unsigned char));
    NSUInteger bytesPerPixel = 4;
    NSUInteger bytesPerRow = bytesPerPixel * width;
    NSUInteger bitsPerComponent = 8;
    CGContextRef context = CGBitmapContextCreate(rawData, width, height,
                                                 bitsPerComponent, bytesPerRow, colorSpace,
                                                 kCGImageAlphaPremultipliedLast | kCGBitmapByteOrder32Big);
    CGColorSpaceRelease(colorSpace);

    CGContextDrawImage(context, CGRectMake(0, 0, width, height), imageRef);
    CGContextRelease(context);

    // Now your rawData contains the image data in the RGBA8888 pixel format.
    int byteIndex = (int)((bytesPerRow * yy) + xx * bytesPerPixel);
    //    for (int ii = 0; ii < count; ++ii) {
    CGFloat red = (rawData[byteIndex] * 1.0) / 255.0;
    CGFloat green = (rawData[byteIndex + 1] * 1.0) / 255.0;
    CGFloat blue = (rawData[byteIndex + 2] * 1.0) / 255.0;
    CGFloat alpha = (rawData[byteIndex + 3] * 1.0) / 255.0;
    byteIndex += 4;

    UIColor* acolor = [UIColor colorWithRed:red
                                      green:green
                                       blue:blue
                                      alpha:alpha];
    //        //[result addObject:acolor];
    free(rawData);
    return acolor;
}

@end

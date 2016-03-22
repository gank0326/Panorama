//
//  ViewController.m
//  Arc-helloPanorama
//
//  Created by 张灿 on 15/8/25.
//  Copyright (c) 2015年 FDD. All rights reserved.
//

#import "ViewController.h"
#import "PLView.h"
@interface ViewController ()

@property (nonatomic,retain) PLView* plview;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    PLView* plView = [[PLView alloc]initWithFrame:self.view.frame];
    _plview = plView;
    [self.view addSubview:plView];
    plView.isDeviceOrientationEnabled = YES;
    plView.isAccelerometerEnabled = NO;
    plView.isScrollingEnabled = YES;
    plView.isInertiaEnabled = NO;
    plView.type = PLViewTypeSpherical;
    [plView addTexture:[PLTexture textureWithPath:[[NSBundle mainBundle] pathForResource:@"abf" ofType:@"jpg"]]];
    
    
    /*
     //Example with Cube Faces type (you need an image for each cube face)
     plView.type = PLViewTypeCubeFaces;
     [plView addTexture:[PLTexture textureWithPath:[[NSBundle mainBundle] pathForResource:@"1" ofType:@"jpg"]]];
     [plView addTexture:[PLTexture textureWithPath:[[NSBundle mainBundle] pathForResource:@"2" ofType:@"jpg"]]];
     [plView addTexture:[PLTexture textureWithPath:[[NSBundle mainBundle] pathForResource:@"3" ofType:@"jpg"]]];
     [plView addTexture:[PLTexture textureWithPath:[[NSBundle mainBundle] pathForResource:@"4" ofType:@"jpg"]]];
     [plView addTexture:[PLTexture textureWithPath:[[NSBundle mainBundle] pathForResource:@"5" ofType:@"jpg"]]];
     [plView addTexture:[PLTexture textureWithPath:[[NSBundle mainBundle] pathForResource:@"6" ofType:@"jpg"]]];
     */
    
    //    plView.type = PLViewTypeCylindrical;
    //    [plView addTexture:[PLTexture textureWithPath:[[NSBundle mainBundle] pathForResource:@"long" ofType:@"jpg"]]];
}

@end

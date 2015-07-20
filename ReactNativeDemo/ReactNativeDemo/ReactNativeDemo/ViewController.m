//
//  ViewController.m
//  ReactNativeDemo
//
//  Created by XueYulun on 15/7/20.
//  Copyright © 2015年 __Dylan. All rights reserved.
//

#import "ViewController.h"
#import "ReactView.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet ReactView *reactView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)reLoadReactNativeView:(UIButton *)sender {
    
    [_reactView reLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

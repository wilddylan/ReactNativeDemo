//
//  ReactView.m
//  ReactNativeDemo
//
//  Created by XueYulun on 15/7/20.
//  Copyright © 2015年 __Dylan. All rights reserved.
//

#import "ReactView.h"
#import <RCTRootView.h>
#import <RCTBridge.h>

@implementation ReactView

- (void)awakeFromNib {
    
    [super awakeFromNib];
    
    NSURL *jsCodeLocation = [NSURL URLWithString:@"http://localhost:8081/index.ios.bundle"];
    // For production use, this `NSURL` could instead point to a pre-bundled file on disk:
    //
    // NSURL *jsCodeLocation = [[NSBundle mainBundle] URLForResource:@"main" withExtension:@"jsbundle"]; //
    // To generate that file, run the curl command and add the output to your main Xcode build target: //
    // curl http://localhost:8081/index.ios.bundle -o main.jsbundle
    
    RCTRootView *rootView = [[RCTRootView alloc] initWithBundleURL:jsCodeLocation
                                                        moduleName: @"ReactNativeDemo" launchOptions:nil];
    _bridge = rootView.bridge;
    [self addSubview:rootView];
    rootView.frame = self.bounds;
}

- (void)reLoad {
    
    [_bridge reload];
}

@end

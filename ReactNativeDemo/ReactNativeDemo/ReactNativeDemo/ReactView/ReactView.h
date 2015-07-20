//
//  ReactView.h
//  ReactNativeDemo
//
//  Created by XueYulun on 15/7/20.
//  Copyright © 2015年 __Dylan. All rights reserved.
//

#import <UIKit/UIKit.h>

@class RCTBridge;

@interface ReactView : UIView

@property (nonatomic, strong) RCTBridge * bridge;

- (void)reLoad;

@end

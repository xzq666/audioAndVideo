//
//  ZXSegmentedControlTheme.h
//  ZXTheme
//
//  Created by 李兆祥 on 2019/5/31.
//  Copyright © 2019 李兆祥. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN

@interface ZXSegmentedControlTheme : NSObject
/**
 设置SegmentedControl的tintColor
 */
@property(strong, nonatomic) UIColor *tintColor;
/**
 设置SegmentedControl的背景颜色
 */
@property(strong, nonatomic) UIColor *backgroundColor;
@end

NS_ASSUME_NONNULL_END

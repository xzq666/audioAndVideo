//
//  XZQBaseDefinition.h
//  AudioAndVideo
//
//  Created by qhzc-iMac-02 on 2020/4/8.
//  Copyright © 2020 Xuzq. All rights reserved.
//

#ifndef XZQBaseDefinition_h
#define XZQBaseDefinition_h

// 屏幕
#define SCREEN_BOUNDS ([[UIScreen mainScreen] bounds])
#define SCREEN_WIDTH (SCREEN_BOUNDS.size.width)
#define SCREEN_HEIGHT (SCREEN_BOUNDS.size.height)
#define SCREEN_SCALE ([[UIScreen mainScreen] scale])
#define SINGLE_LINE_ONE ([[UIScreen mainScreen] scale]/[[UIScreen mainScreen] scale])

#define SafeAreaNoTopHeight ([CommonUtils getDeviceStatusHeight] >= 44 ? 44 : 20)
#define SafeAreaTopHeight ([CommonUtils getDeviceStatusHeight] >= 44 ? 88 : 64)
#define SafeAreaBottomHeight ([CommonUtils getDeviceStatusHeight] >= 44 ? 34 : 0)

#define WeakSelf(weakSelf) __weak __typeof(self) weakSelf = self;

#endif /* XZQBaseDefinition_h */

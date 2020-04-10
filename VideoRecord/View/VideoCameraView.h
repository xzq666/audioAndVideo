//
//  VideoCameraView.h
//  AudioAndVideo
//
//  Created by qhzc-iMac-02 on 2020/4/10.
//  Copyright © 2020 Xuzq. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef void(^ClickBackBtnBlock)(void);

@interface VideoCameraView : UIView {
    GPUImageVideoCamera *videoCamera;
    GPUImageView *filteredVideoView;
}

// 返回按钮block
@property(nonatomic,copy) ClickBackBtnBlock clickBackBtnBlock;

- (instancetype)initWithFrame:(CGRect)frame;

@end

NS_ASSUME_NONNULL_END

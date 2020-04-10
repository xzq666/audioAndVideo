//
//  VideoCameraView.m
//  AudioAndVideo
//
//  Created by qhzc-iMac-02 on 2020/4/10.
//  Copyright © 2020 Xuzq. All rights reserved.
//

#import "VideoCameraView.h"

@implementation VideoCameraView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        filteredVideoView = [[GPUImageView alloc] initWithFrame:SCREEN_BOUNDS];
        [self addSubview:filteredVideoView];
        
        [self setupIconUI];
    }
    return self;
}

- (void)setupIconUI {
    UIButton *backBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    backBtn.frame = CGRectMake(SCREEN_WIDTH - 60, SafeAreaNoTopHeight + 15, 30, 30);
    [backBtn setImage:[UIImage imageNamed:@"present_back"] forState:UIControlStateNormal];
    [backBtn addTarget:self action:@selector(clickBack) forControlEvents:UIControlEventTouchUpInside];
    [filteredVideoView addSubview:backBtn];
}

- (void)clickBack {
    if (self.clickBackBtnBlock) {
        self.clickBackBtnBlock();
        [self removeFromSuperview];
    }
}

@end

//
//  VideoRecordVC.m
//  AudioAndVideo
//
//  Created by qhzc-iMac-02 on 2020/4/8.
//  Copyright © 2020 Xuzq. All rights reserved.
//

#import "VideoRecordVC.h"
#import "VideoCameraView.h"

@interface VideoRecordVC ()

@end

@implementation VideoRecordVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self createUI];
}

- (void)createUI {
    bool needNewVideoCamera = YES;
    for (UIView* subView in self.view.subviews) {
        if ([subView isKindOfClass:[VideoCameraView class]]) {
            needNewVideoCamera = NO;
        }
    }
    if (needNewVideoCamera) {
        VideoCameraView* videoCameraView = [[VideoCameraView alloc] initWithFrame:SCREEN_BOUNDS];
        WeakSelf(weakSelf);
        videoCameraView.clickBackBtnBlock = ^{
            [weakSelf dismissViewControllerAnimated:YES completion:^{
                
            }];
        };
        [self.view addSubview:videoCameraView];
    }
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self prefersStatusBarHidden];
}

- (BOOL)prefersStatusBarHidden {
    return YES;
}

@end

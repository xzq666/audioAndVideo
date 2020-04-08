//
//  VideoListVC.m
//  AudioAndVideo
//
//  Created by qhzc-iMac-02 on 2020/4/8.
//  Copyright © 2020 Xuzq. All rights reserved.
//

#import "VideoListVC.h"

@interface VideoListVC ()

@end

@implementation VideoListVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor systemBackgroundColor];
    
    UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 200, 44)];
    titleLabel.font = [UIFont fontWithName:@"PingFangSC-Medium" size:18];
    titleLabel.textAlignment = NSTextAlignmentCenter;
    titleLabel.text = @"视频推荐";
    self.navigationItem.titleView = titleLabel;
}

@end

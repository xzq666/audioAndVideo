//
//  RootTabBarController.m
//  AudioAndVideo
//
//  Created by qhzc-iMac-02 on 2020/4/8.
//  Copyright © 2020 Xuzq. All rights reserved.
//

#import "RootTabBarController.h"

#import "VideoListVC.h"
#import "ViewController.h"
#import "VideoRecordVC.h"
#import "MineVC.h"

@interface RootTabBarController ()

@end

@implementation RootTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self setUI];
    [self setupTabBarBackgroundImage];
}

- (void)viewDidLayoutSubviews {
    // 自定义TabBar高度
    CGRect tabFrame = self.tabBar.frame;
    tabFrame.size.height = 60 + SafeAreaBottomHeight;
    tabFrame.origin.y = self.view.frame.size.height - (60 + SafeAreaBottomHeight);
    self.tabBar.frame = tabFrame;
}

/*
 设置TabBarItem
 */
- (void)setUI {
    // 设置Navigation的控制器
    UINavigationController *videoListNC = [[UINavigationController alloc] initWithRootViewController:VideoListVC.new];
    UINavigationController *pushNC = [[UINavigationController alloc] initWithRootViewController:ViewController.new];
    UINavigationController *mineNC = [[UINavigationController alloc] initWithRootViewController:MineVC.new];
    self.viewControllers =@[videoListNC, pushNC, mineNC];
    
    NSArray *iconDefaultArray = @[@"tab_live", @"tab_room", @"tab_me"];  // icon初始图
    NSArray *iconSelectArray = @[@"tab_live_p", @"tab_room_p", @"tab_me_p"];  // icon选中图
    
    for (int i = 0; i < iconDefaultArray.count; i++) {
        UIViewController *vc = self.viewControllers[i];
        vc.tabBarItem = [[UITabBarItem alloc] initWithTitle:nil image:[[UIImage imageNamed:iconDefaultArray[i]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] selectedImage:[[UIImage imageNamed:iconSelectArray[i]]  imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
        vc.tabBarItem.imageInsets = UIEdgeInsetsMake(8, 0, -8, 0);
    }
    
    UIButton *centerBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    centerBtn.frame = CGRectMake(SCREEN_WIDTH / 2 - 30 , 0, 60, 60);
    [centerBtn addTarget:self action:@selector(centerClick) forControlEvents:UIControlEventTouchUpInside];
    [self.tabBar addSubview:centerBtn];
}

- (void)centerClick {
    VideoRecordVC *videoRecord = [[VideoRecordVC alloc] init];
    videoRecord.modalPresentationStyle = UIModalPresentationFullScreen;
    [self.selectedViewController presentViewController:videoRecord animated:YES completion:^{
        
    }];
}

/*
 设置tabBar背景图
 */
- (void)setupTabBarBackgroundImage {
    // 隐藏阴影线
    [[UITabBar appearance] setShadowImage:[UIImage new]];
    [self.tabBar setShadowImage:[UIImage new]];
    
    // tabBar背景图
    UIImage *image = [UIImage imageNamed:@"tab_bg"];
    CGFloat top = 49;      // 顶端盖高度
    CGFloat bottom = 49 ;  // 底端盖高度
    CGFloat left = 100;    // 左端盖宽度
    CGFloat right = 100;   // 右端盖宽度
    UIEdgeInsets insets = UIEdgeInsetsMake(top, left, bottom, right);
    // 指定为拉伸模式，伸缩后重新赋值
    UIImage *tabBarBgImage = [image resizableImageWithCapInsets:insets resizingMode:UIImageResizingModeStretch];
    
    self.tabBar.backgroundImage = tabBarBgImage;
    self.tabBar.shadowImage = [UIImage new];
    
    [self.tabBar setClipsToBounds:YES];
}

@end

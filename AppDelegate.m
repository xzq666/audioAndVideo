//
//  AppDelegate.m
//  AudioAndVideo
//
//  Created by qhzc-iMac-02 on 2020/4/8.
//  Copyright © 2020 Xuzq. All rights reserved.
//

#import "AppDelegate.h"
#import "RootTabBarController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

@synthesize window = _window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    if (@available(iOS 13,*)) {
    } else {
        if (@available(iOS 13.0, *)) {
            if (UITraitCollection.currentTraitCollection.userInterfaceStyle == UIUserInterfaceStyleDark) {
                [ZXTheme defaultTheme].zx_darkTheme = YES;
            } else {
                [ZXTheme defaultTheme].zx_darkTheme = NO;
            }
        }
        [CommonUtils initDarkTheme];
        [[ZXTheme defaultTheme] zx_themeUpdate];
        
        self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
        RootTabBarController *rootNavgationController = [[RootTabBarController alloc] init];
        self.window.rootViewController = rootNavgationController;
        [self.window makeKeyAndVisible];
    }
    return YES;
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    if (@available(iOS 13.0, *)) {
        if (UITraitCollection.currentTraitCollection.userInterfaceStyle == UIUserInterfaceStyleDark) {
            [ZXTheme defaultTheme].zx_darkTheme = YES;
        } else {
            [ZXTheme defaultTheme].zx_darkTheme = NO;
        }
    }
    [CommonUtils initDarkTheme];
    [[ZXTheme defaultTheme] zx_themeUpdate];
}


#pragma mark - UISceneSession lifecycle


- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
}


- (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions {
    // Called when the user discards a scene session.
    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
}


@end

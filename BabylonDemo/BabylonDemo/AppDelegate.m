//
//  AppDelegate.m
//  FirstDemo
//
//  Created by logiph on 7/25/16.
//  Copyright © 2016 logiph. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import "WGLViewContraller.h"
#import "BackgroundViewController.h"

@interface AppDelegate ()

@property(nonatomic, strong) WGLViewContraller *wglVC;
@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.

    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];

    
//    ViewController *vc = [[ViewController alloc] initWithNibName:@"ViewController" bundle:nil];

//    
//    UITableViewController *vc0 = [[UITableViewController alloc] init];
//    UINavigationController *vc1 = [[UINavigationController alloc] init];
//    UITabBarController *vc2 = [[UITabBarController alloc] init];
//    
//    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:vc];
//
    
    
//    [self.window addSubview:vc.view];
//    self.window.rootViewController = vc;

    [self.window makeKeyAndVisible];

    BackgroundViewController *bgVC = [[BackgroundViewController alloc] initWithNibName:@"BackgroundViewController" bundle:nil];
    self.wglVC = [[WGLViewContraller alloc] initWithBundlePath:[[NSBundle mainBundle] bundlePath]];
    self.wglVC.view.frame = [UIScreen mainScreen].bounds;
    self.wglVC.view.userInteractionEnabled = YES;

    
//    [bgVC addChildViewController:wglVC];
    [bgVC.view addSubview:self.wglVC.view];
    bgVC.view.clipsToBounds = YES;

    self.window.rootViewController = bgVC;

//    [self set]
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end

//
//  AppDelegate.m
//  Records Fan
//
//  Created by Qu Chong on 14/11/24.
//  Copyright (c) 2014年 Qu Chong. All rights reserved.
//

#import "AppDelegate.h"
#import "MainTabViewController.h"
#import "NavController.h"
#import "RecordsViewController.h"
#import "CollectViewController.h"
#import "ArtistViewController.h"
#import "MoodViewController.h"
#import "MoreViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    
    //init the view controllers
    RecordsViewController *reView = [[RecordsViewController alloc] init];
    CollectViewController *clView = [[CollectViewController alloc] init];
    ArtistViewController *arView = [[ArtistViewController alloc] init];
    MoodViewController *moView = [[MoodViewController alloc] init];
    MoreViewController *morView = [[MoreViewController alloc] init];
    
    //init the navigation controllers
    NavController *nav1 = [[NavController alloc] initWithRootViewController:reView];
    NavController *nav2 = [[NavController alloc] initWithRootViewController:clView];
    NavController *nav3 = [[NavController alloc] initWithRootViewController:arView];
    NavController *nav4 = [[NavController alloc] initWithRootViewController:moView];
    NavController *nav5 = [[NavController alloc] initWithRootViewController:morView];
    
    NSArray *vcs = [NSArray arrayWithObjects:nav1, nav2, nav3, nav4, nav5, nil];

    //init the tabbar controller
    MainTabViewController *tabViewController = [[MainTabViewController alloc] init];
    [tabViewController setViewControllers:vcs];
    
    self.window.rootViewController = tabViewController;
    [self.window makeKeyAndVisible];
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
    // Saves changes in the application's managed object context before the application terminates.
}





@end

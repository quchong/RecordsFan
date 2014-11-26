//
//  MoodViewController.m
//  Records Fan
//
//  Created by Qu Chong on 14/11/27.
//  Copyright (c) 2014年 Qu Chong. All rights reserved.
//

#import "MoodViewController.h"

@implementation MoodViewController

- (id)init
{
    self = [super init];
    if (self) {
        UITabBarItem *itemMood = [[UITabBarItem alloc] initWithTitle:@"心情" image:[UIImage imageNamed:@"mood"] selectedImage:[UIImage imageNamed:@"mood_sel"]];
        [self setTabBarItem:itemMood];
        [self.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor colorWithRed:170.0 / 255.0 green:170.0 / 255.0 blue:170.0 / 255.0 alpha:1]} forState:UIControlStateSelected];
        [self.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor colorWithRed:80.0 / 255.0 green:208.0 / 255.0 blue:192.0 / 255.0 alpha:1]} forState:UIControlStateSelected];
        
        UIBarButtonItem *now_playing_btn = [[UIBarButtonItem alloc] init];
        [now_playing_btn setImage:[UIImage imageNamed:@"now_playing@2x"]];
        [now_playing_btn setTintColor:[UIColor whiteColor]];
        [self.navigationItem setRightBarButtonItem:now_playing_btn];
        
        [self setTitle:itemMood.title];
    }
    return self;
}

@end

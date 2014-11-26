//
//  MoreViewController.m
//  Records Fan
//
//  Created by Qu Chong on 14/11/27.
//  Copyright (c) 2014年 Qu Chong. All rights reserved.
//

#import "MoreViewController.h"

@implementation MoreViewController
- (id)init
{
    self = [super init];
    if (self) {
        UITabBarItem *itemMore = [[UITabBarItem alloc] initWithTitle:@"更多" image:[UIImage imageNamed:@"more"] selectedImage:[UIImage imageNamed:@"more_sel"]];
        [self setTabBarItem:itemMore];
        [self.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor colorWithRed:170.0 / 255.0 green:170.0 / 255.0 blue:170.0 / 255.0 alpha:1]} forState:UIControlStateSelected];
        [self.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor colorWithRed:80.0 / 255.0 green:208.0 / 255.0 blue:192.0 / 255.0 alpha:1]} forState:UIControlStateSelected];
        
        UIBarButtonItem *now_playing_btn = [[UIBarButtonItem alloc] init];
        [now_playing_btn setImage:[UIImage imageNamed:@"now_playing@2x"]];
        [now_playing_btn setTintColor:[UIColor whiteColor]];
        [self.navigationItem setRightBarButtonItem:now_playing_btn];
        
        [self setTitle:itemMore.title];
    }
    return self;
}
@end

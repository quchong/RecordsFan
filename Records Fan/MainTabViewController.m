//
//  MainTabViewController.m
//  Records Fan
//
//  Created by Qu Chong on 14/11/25.
//  Copyright (c) 2014年 Qu Chong. All rights reserved.
//

#import "MainTabViewController.h"

@interface MainTabViewController ()

@end

@implementation MainTabViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIImage *back = [UIImage imageNamed:@"tabbar_back"];
    UIImage *shadow = [UIImage imageNamed:@"tabbar_shadow"];
    
    [self.tabBar setBackgroundImage:back];
    [self.tabBar setShadowImage:shadow];
    [self.tabBar setTranslucent:YES];
    [self.tabBar setTintColor:[UIColor colorWithRed:80.0 / 255.0 green:208.0 / 255.0 blue:192.0 / 255.0 alpha:1]];

     // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

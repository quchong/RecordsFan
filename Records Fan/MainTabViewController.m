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
    UIImage *back = [UIImage imageNamed:@"tabbar_back.png"];
    [self.tabBar setBackgroundImage:back];
    [self.tabBar setShadowImage:back];
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

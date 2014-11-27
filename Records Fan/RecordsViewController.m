//
//  ViewController.m
//  Records Fan
//
//  Created by Qu Chong on 14/11/24.
//  Copyright (c) 2014年 Qu Chong. All rights reserved.
//

#import "RecordsViewController.h"
#import "titleMenu.h"

@interface RecordsViewController ()

@end

@implementation RecordsViewController

@synthesize tMenu, recordsTableView;

- (id)init
{
    self = [super init];
    if (self) {
        tMenu = [[titleMenu alloc] initWithFrame:CGRectZero];
        self.navigationItem.titleView = tMenu;
        
        recordsTableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)];
        [self.view addSubview:recordsTableView];
        
        UIBarButtonItem *now_playing_btn = [[UIBarButtonItem alloc] init];
        [now_playing_btn setImage:[UIImage imageNamed:@"now_playing@2x"]];
        [now_playing_btn setTintColor:[UIColor whiteColor]];
        [self.navigationItem setRightBarButtonItem:now_playing_btn];
        
        [self.tMenu addTarget:self action:@selector(titleMenuPressed) forControlEvents:UIControlEventTouchDown];
        [self.tMenu addTarget:self action:@selector(titleMenuReleased) forControlEvents:UIControlEventTouchUpInside];
        [self.tMenu addTarget:self action:@selector(titleMenuReleased) forControlEvents:UIControlEventTouchUpOutside];
        
        UITabBarItem *itemRecords = [[UITabBarItem alloc] initWithTitle:@"唱片" image:[UIImage imageNamed:@"records"] selectedImage:[UIImage imageNamed:@"records_sel"]];
        [self setTabBarItem:itemRecords];
        
        [self.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor colorWithRed:170.0 / 255.0 green:170.0 / 255.0 blue:170.0 / 255.0 alpha:1]} forState:UIControlStateSelected];
        [self.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor colorWithRed:80.0 / 255.0 green:208.0 / 255.0 blue:192.0 / 255.0 alpha:1]} forState:UIControlStateSelected];
    }
    return self;
}

- (IBAction)titleMenuPressed
{

    [tMenu.titleLabel setTextColor:[UIColor lightGrayColor]];
    [tMenu.triangle_nav_btn setImage:[UIImage imageNamed:@"tri_nav_down"]];

}

- (IBAction)titleMenuReleased
{

    [tMenu.titleLabel setTextColor:[UIColor whiteColor]];
    [tMenu.triangle_nav_btn setImage:[UIImage imageNamed:@"tri_nav"]];

}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self.view setBackgroundColor:[UIColor whiteColor]];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

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

@synthesize tMenu;

- (id)init
{
    self = [super init];
    if (self) {
        tMenu = [[titleMenu alloc] initWithFrame:CGRectZero];
        self.navigationItem.titleView = tMenu;
        
        UIBarButtonItem *now_playing_btn = [[UIBarButtonItem alloc] init];
        [now_playing_btn setImage:[UIImage imageNamed:@"now_playing@2x"]];
        [now_playing_btn setTintColor:[UIColor whiteColor]];
        [self.navigationItem setRightBarButtonItem:now_playing_btn];
        [self.tMenu addTarget:self action:@selector(titleMenuPressed) forControlEvents:UIControlEventTouchDown];
        [self.tMenu addTarget:self action:@selector(titleMenuReleased) forControlEvents:UIControlEventTouchUpInside];
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

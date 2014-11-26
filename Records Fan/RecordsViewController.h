//
//  ViewController.h
//  Records Fan
//
//  Created by Qu Chong on 14/11/24.
//  Copyright (c) 2014年 Qu Chong. All rights reserved.
//

#import <UIKit/UIKit.h>

@class titleMenu;

@interface RecordsViewController : UIViewController

@property (strong, nonatomic) titleMenu *tMenu;
@property (strong, nonatomic) UITableView *recordsTableView;

@end

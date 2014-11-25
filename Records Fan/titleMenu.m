//
//  titleMenu.m
//  Records Fan
//
//  Created by Qu Chong on 14/11/25.
//  Copyright (c) 2014年 Qu Chong. All rights reserved.
//

#import "titleMenu.h"

@implementation titleMenu
@synthesize titleLabel, triangle_nav_btn;

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/


- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        //initialize the menu items
        NSArray *titleStrings = [NSArray arrayWithObjects:@"最近添加", @"最常播放", @"很少收听", nil];
        NSString *titleString = [titleStrings objectAtIndex:0];
        
        //calculate the title view length
        NSDictionary *dictFont = @{NSFontAttributeName:[UIFont systemFontOfSize:18.0f]};
        CGSize titleTextSize = [titleString sizeWithAttributes:dictFont];
        
        titleLabel = [[UILabel alloc] init];
        [titleLabel setFont:[UIFont boldSystemFontOfSize:18.0f]];
        [titleLabel setFrame:CGRectMake(0, 0, titleTextSize.width, titleTextSize.height)];
        
        [titleLabel setTextColor:[UIColor whiteColor]];
        [titleLabel setText:titleString];
        
        triangle_nav_btn = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"tri_nav"]];
        triangle_nav_btn.center = CGPointMake(titleTextSize.width + 10, titleLabel.center.y);
        
        [self addSubview:titleLabel];
        [self addSubview:triangle_nav_btn];
        
        [self setFrame:CGRectMake(0, 0, titleTextSize.width + 5, titleTextSize.height)];
        
    }
    return self;
}


@end

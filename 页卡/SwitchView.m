//
//  SwitchView.m
//  页卡
//
//  Created by 王立震 on 16/3/15.
//  Copyright © 2016年 王立震. All rights reserved.
//

#import "SwitchView.h"

@implementation SwitchView

- (instancetype)initWithFrame:(CGRect)frame andTitleArray:(NSArray *)titles andContentSize:(CGSize)contentSize{

    if (self = [super initWithFrame:frame]) {
        
        self.contentSize = contentSize;
        self.showsHorizontalScrollIndicator = NO;
        self.showsVerticalScrollIndicator = NO;
        self.bounces = NO;
        
        
        [self creatViewsWithTitle:titles andContentSize:contentSize];
    }
    
    return self;
}

- (void)creatViewsWithTitle:(NSArray *)titles andContentSize:(CGSize)contentSize{
    
    CGFloat width = contentSize.width;
    CGFloat height = contentSize.height;
    CGFloat itemWidth = width/titles.count;
    
    for (int i = 0; i < titles.count; i++) {
       
        NSString *title = titles[i];
        UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(i*itemWidth, 0, itemWidth, height)];
        [button setTitle:title forState:UIControlStateNormal];
        button.tag = i + 10;
        [button addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:button];
    }
}
- (void)btnClick:(UIButton *)btn{

    NSInteger num = btn.tag - 10;
    
    [self.switchViewDelegate selectNumOfItem:num];
}


@end

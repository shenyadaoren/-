//
//  OneCell.m
//  页卡
//
//  Created by 王立震 on 16/3/15.
//  Copyright © 2016年 王立震. All rights reserved.
//

#import "OneCell.h"

@implementation OneCell


- (instancetype)init{
    
    if (self = [super init]) {
        self.backgroundColor = [UIColor orangeColor];
        [self creatViews];
    }
    return self;
}

- (void)creatViews{
    label = [[UILabel alloc] initWithFrame:CGRectMake(10, 10, 100, 30)];
    [self addSubview:label];
}
- (void)setText:(NSString *)text{
    label.text = text;
}



- (void)awakeFromNib {
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
}

@end

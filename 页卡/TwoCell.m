//
//  TwoCell.m
//  页卡
//
//  Created by 王立震 on 16/3/15.
//  Copyright © 2016年 王立震. All rights reserved.
//

#import "TwoCell.h"

@implementation TwoCell

- (instancetype)init{

    if (self = [super init]) {
        self.backgroundColor = [UIColor purpleColor];
        [self creatViews];
    }
    return self;
}

- (void)creatViews{
    label = [[UILabel alloc] initWithFrame:CGRectMake(100, 50, 100, 30)];
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

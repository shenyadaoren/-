//
//  OneCell.h
//  页卡
//
//  Created by 王立震 on 16/3/15.
//  Copyright © 2016年 王立震. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface OneCell : UITableViewCell{
    
    UILabel *label;
}

- (instancetype)init;

@property (nonatomic, strong)NSString *text;

@end

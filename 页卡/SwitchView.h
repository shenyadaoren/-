//
//  SwitchView.h
//  页卡
//
//  Created by 王立震 on 16/3/15.
//  Copyright © 2016年 王立震. All rights reserved.
//

#import <UIKit/UIKit.h>

//点击方法 协议
@protocol SwitchViewDelegate <NSObject>
- (void)selectNumOfItem:(NSInteger)number;
@end

@interface SwitchView : UIScrollView

@property (nonatomic, assign)id <SwitchViewDelegate> switchViewDelegate;

- (instancetype)initWithFrame:(CGRect)frame andTitleArray:(NSArray *)titles andContentSize:(CGSize)contentSize;
@end


//
//  ViewController.m
//  页卡
//
//  Created by 王立震 on 16/3/15.
//  Copyright © 2016年 王立震. All rights reserved.
//

#import "ViewController.h"
#import "SwitchView.h"
#import "OneCell.h"
#import "TwoCell.h"

#define kScreenWidth [UIScreen mainScreen].bounds.size.width
#define kScreenHeight [UIScreen mainScreen].bounds.size.height


@interface ViewController ()<SwitchViewDelegate, UITableViewDataSource, UITableViewDelegate>{

    UITableView *_tableView;
    NSArray *cellArray;
    
    NSInteger state;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.edgesForExtendedLayout = UIRectEdgeNone;
    
    cellArray = @[@"one", @"two", @"three", @"four", @"five", @"six", @"seven", @"eight"];
    state = 0;
    
    
    [self creatViews];
}
- (void)creatViews{

    NSArray *titles = [NSArray arrayWithArray:cellArray];
    SwitchView *switchView = [[SwitchView alloc] initWithFrame:CGRectMake(0, 0, kScreenWidth, 30) andTitleArray:titles andContentSize:CGSizeMake(kScreenWidth * 2, 30)];
    switchView.backgroundColor = [UIColor redColor];
    switchView.switchViewDelegate = self;
    [self.view addSubview:switchView];
    
    _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 30, kScreenWidth, kScreenHeight - 30)];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    [self.view addSubview:_tableView];
    
}
#pragma mark - UITableViewDataSource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{

    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{

    return cellArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    int flag = state%2;
    if (flag) {
        
        OneCell *cell = [tableView dequeueReusableCellWithIdentifier:@"OneCell"];
        if (!cell) {
            cell = [[OneCell alloc] init];
        }
        cell.text = cellArray[indexPath.row];
        
        UIView *line = [[UIView alloc] initWithFrame:CGRectMake(0, 49, kScreenWidth, 1)];
        line.backgroundColor = [UIColor lightGrayColor];
        [cell addSubview:line];
        
        return cell;
        
    }else{
        
        TwoCell *cell = [tableView dequeueReusableCellWithIdentifier:@"TwoCell"];
        if (!cell) {
            cell = [[TwoCell alloc] init];
        }
        cell.text = cellArray[indexPath.row];
        
        UIView *line = [[UIView alloc] initWithFrame:CGRectMake(0, 99, kScreenWidth, 1)];
        line.backgroundColor = [UIColor lightGrayColor];
        [cell addSubview:line];
    
        return cell;
    }
}
#pragma mark - UITableViewDelegate
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{

    int flag = state%2;
    if (flag) {
    
        return 50;
    }else{
        return 100;
    }
}

#pragma mark - SwitchViewDelegate
- (void)selectNumOfItem:(NSInteger)number{
//    NSLog(@"点击了第%i", number);
    state = number;
    [_tableView reloadData];
}


@end

//
//  HomeViewController.m
//  GradualEffectTransitionAnimationDemo
//
//  Created by 王亚文 on 2017/4/10.
//  Copyright © 2017年 wyw. All rights reserved.
//

#import "HomeViewController.h"
#import "HomeCell.h"
#import "SecondViewController.h"

@interface HomeViewController ()<UITableViewDelegate, UITableViewDataSource>


@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.titleLabel.text = @"CustomTransitionViewController";
    self.leftButton.hidden = YES;
    
    [self loadTableView];
    
}

- (void)loadTableView
{
    UITableView *tableView = [[UITableView alloc] initWithFrame:self.contentView.bounds style:UITableViewStylePlain];
    tableView.dataSource = self;
    tableView.delegate = self;
    tableView.tableFooterView = [[UIView alloc] init];
    tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.tableView = tableView;
    [self.contentView addSubview:self.tableView];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 20;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return [HomeCell cellHeight];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellId = @"cellId";
    HomeCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId];
    if(cell==nil){
        cell = [[HomeCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellId];
    }
    [cell refreshContent];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    SecondViewController *secondVC = [[SecondViewController alloc] init];
    [self.navigationController pushViewController:secondVC animated:YES];
}
@end

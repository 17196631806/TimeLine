//
//  ViewController.m
//  TimeLineProjects
//
//  Created by 刘春雷 on 2017/8/20.
//  Copyright © 2017年 刘春雷. All rights reserved.
//

#import "ViewController.h"
#import "ProcessTableViewCell.h"
#import <UITableView+FDTemplateLayoutCell.h>

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic,strong) UITableView *tableview;

@property (nonatomic,strong) NSArray *titleArray;

@property (nonatomic,strong) NSArray *contentArray;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    //数据源
    self.titleArray = @[@"王二",@"张三",@"李四",@"王五",@"张华"];
    self.contentArray = @[@"经费和恢复速度简",@"",@"活动经费数据见风使舵就觉得计算机二级就是觉得多久放假时间党风建设",@"好的",@"节食减肥就是觉得经济的附加几十块开发"];
    
    self.tableview = [[UITableView alloc]initWithFrame:[UIScreen mainScreen].bounds style:UITableViewStyleGrouped];
    self.tableview.dataSource = self;
    self.tableview.delegate = self;
    [self.tableview registerClass:[ProcessTableViewCell class] forCellReuseIdentifier:@"Cell"];
    [self.view addSubview:self.tableview];
}

#pragma UITableViewDelegate  UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.titleArray.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return [tableView fd_heightForCellWithIdentifier:@"Cell" cacheByIndexPath:indexPath configuration:^(ProcessTableViewCell *cell) {
        
        //防止数据为空时，cell的高度有误差
        if ([self.contentArray[indexPath.row] length] > 0) {
            cell.contentLabel.text = self.contentArray[indexPath.row];
        }else{
            cell.contentLabel.text = @"设置";
        }
        
    }];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    ProcessTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    if (!cell) {
        cell = [[ProcessTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
    }
    cell.titleLabel.text = self.titleArray[indexPath.row];
    cell.contentLabel.text = self.contentArray[indexPath.row];
    return cell;

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

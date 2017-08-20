//
//  ProcessTableViewCell.h
//  TimeLineProjects
//
//  Created by 刘春雷 on 2017/8/20.
//  Copyright © 2017年 刘春雷. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ProcessTableViewCell : UITableViewCell

@property (nonatomic,strong) UIView *roundView;

@property (nonatomic,strong) UILabel *titleLabel;

@property (nonatomic,strong) UILabel *contentLabel;

@property (nonatomic,strong) UILabel *onLine;

@property (nonatomic,strong) UILabel *downLine;

@end

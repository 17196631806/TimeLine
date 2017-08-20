//
//  ProcessTableViewCell.m
//  TimeLineProjects
//
//  Created by 刘春雷 on 2017/8/20.
//  Copyright © 2017年 刘春雷. All rights reserved.
//

#import "ProcessTableViewCell.h"
#import <Masonry.h>

@implementation ProcessTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        
        self.roundView = [[UIView alloc]init];
        self.roundView.layer.masksToBounds = YES;
        self.roundView.layer.cornerRadius = 9;
        self.roundView.layer.borderWidth = 1;
        [self.contentView addSubview:self.roundView];
        [self.roundView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(self.contentView.mas_top).offset(11);
            make.left.mas_equalTo(self.contentView.mas_left).offset(15);
            make.size.mas_equalTo(CGSizeMake(18, 18));
        }];
        
        
        self.titleLabel = [[UILabel alloc]init];
        self.titleLabel.font = [UIFont systemFontOfSize:15];
        [self.contentView addSubview: self.titleLabel];
        [self.titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(self.contentView.mas_top).offset(8);
            make.left.mas_equalTo(self.roundView.mas_right).offset(20);
            make.size.mas_equalTo(CGSizeMake(200, 30));
        }];
        
        
        self.contentLabel = [[UILabel alloc]init];
        self.contentLabel.textAlignment = NSTextAlignmentLeft;
        self.contentLabel.numberOfLines = 0;
        self.contentLabel.font = [UIFont systemFontOfSize:15];
        [self.contentView addSubview:self.contentLabel];
        [self.contentLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(self.contentView.mas_top).offset(30);
            make.left.mas_equalTo(self.roundView.mas_right).offset(20);
            make.bottom.mas_equalTo(self.contentView.mas_bottom).offset(-5);
            make.right.mas_equalTo(self.contentView.mas_right).offset(-5);
        }];
        
        
        self.onLine = [[UILabel alloc]init];
        self.onLine.backgroundColor = [UIColor redColor];
        [self.contentView addSubview:self.onLine];
        [self.onLine mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(self.contentView.mas_left).offset(24);
            make.size.mas_equalTo(CGSizeMake(1, 11));
        }];
        
        
        self.downLine = [[UILabel alloc]init];
        self.downLine.backgroundColor = [UIColor redColor];
        [self.contentView addSubview:self.downLine];
        [self.downLine mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(self.roundView.mas_bottom);
            make.left.mas_equalTo(self.contentView.mas_left).offset(24);
            make.bottom.mas_equalTo(self.contentView.mas_bottom);
            make.width.mas_equalTo(@1);
        }];
    }
    return self;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end

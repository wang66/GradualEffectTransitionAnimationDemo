//
//  HomeCell.m
//  GradualEffectTransitionAnimationDemo
//
//  Created by 王亚文 on 2017/4/10.
//  Copyright © 2017年 wyw. All rights reserved.
//

#import "HomeCell.h"

@interface HomeCell ()

@end

@implementation HomeCell


- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if(self){
        [self loadContentView];
    }
    
    return self;
}

- (void)loadContentView
{
    _imgView = [UIImageView create];
    _imgView.contentMode = UIViewContentModeScaleAspectFill;
    [self.contentView addSubview:_imgView];
    LAY(_imgView.left, self.left, 1, 0);
    LAY(_imgView.right, self.right, 1, 0);
    LAY(_imgView.top, self.top, 1, 0);
    LAY(_imgView.bottom, self.bottom, 1, 0);
}

+ (CGFloat)cellHeight
{
    return 250.f;
}

- (void)clearCellData
{
    _imgView.image = nil;
}

- (void)refreshContent
{
    [self clearCellData];
    _imgView.image = IMAGE(@"01.jpeg");
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

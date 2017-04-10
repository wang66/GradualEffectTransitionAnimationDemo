//
//  HomeCell.h
//  GradualEffectTransitionAnimationDemo
//
//  Created by 王亚文 on 2017/4/10.
//  Copyright © 2017年 wyw. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HomeCell : UITableViewCell

@property (nonatomic, strong)UIImageView            *imgView;

+ (CGFloat)cellHeight;
- (void)refreshContent;
@end

//
//  SecondContentView.m
//  GradualEffectTransitionAnimationDemo
//
//  Created by 王亚文 on 2017/4/10.
//  Copyright © 2017年 wyw. All rights reserved.
//

#import "SecondContentView.h"

@interface SecondContentView ()
@property (nonatomic, strong)UIImageView            *imgView;
@end

@implementation SecondContentView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if(self){
        [self loadContentView];
    }
    return self;
}

- (void)loadContentView
{
    _imgView = [UIImageView create];
    _imgView.contentMode = UIViewContentModeScaleAspectFit;
    [self addSubview:_imgView];
    LAY(_imgView.centerX, self.centerX, 1, 0);
    LAY(_imgView.centerY, self.centerY, 1, 0);
    LAYC(_imgView.width, self.bounds.size.width);
    LAYC(_imgView.height, self.bounds.size.height);
}

- (void)refreshContent
{
    _imgView.image = IMAGE(@"01.jpeg");
}

@end

//
//  SecondViewController.m
//  GradualEffectTransitionAnimationDemo
//
//  Created by 王亚文 on 2017/4/10.
//  Copyright © 2017年 wyw. All rights reserved.
//

#import "SecondViewController.h"
#import "SecondContentView.h"


@interface SecondViewController ()


@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.titleLabel.text = @"SecondViewController";
    
    self.contentView.backgroundColor = [UIColor whiteColor];
    SecondContentView *secondV = [[SecondContentView alloc] initWithFrame:self.contentView.bounds];
    [secondV refreshContent];
    [self.contentView addSubview:secondV];
    
}


@end

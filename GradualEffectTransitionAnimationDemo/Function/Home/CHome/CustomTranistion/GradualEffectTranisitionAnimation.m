//
//  GradualEffectTranisitionAnimation.m
//  GradualEffectTransitionAnimationDemo
//
//  Created by 王亚文 on 2017/4/10.
//  Copyright © 2017年 wyw. All rights reserved.
//

#import "GradualEffectTranisitionAnimation.h"
#import "CustomTransitionViewController.h"
#import "HomeCell.h"


@implementation GradualEffectTranisitionAnimation

- (NSTimeInterval)transitionDuration:(nullable id <UIViewControllerContextTransitioning>)transitionContext
{
    return 0.5;
}

- (void)animateTransition:(id <UIViewControllerContextTransitioning>)transitionContext
{
    UIView *containerView = [transitionContext containerView];
    CustomTransitionViewController *fromVC = (CustomTransitionViewController *)[transitionContext viewControllerForKey:UITransitionContextFromViewControllerKey];
    fromVC.contentView.alpha = 0;
    HomeCell *cell = [fromVC.tableView cellForRowAtIndexPath:[fromVC.tableView indexPathsForSelectedRows].firstObject];
    CommonViewController *toVC = (CommonViewController *)[transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];
//    toVC.contentView.backgroundColor = Color_Random;
    toVC.view.frame = [transitionContext finalFrameForViewController:toVC];
    UIView *snapView = [cell snapshotViewAfterScreenUpdates:NO];
    snapView.frame = [snapView convertRect:cell.frame fromView:cell.superview];
    [containerView insertSubview:toVC.view belowSubview:fromVC.view];
    [containerView addSubview:snapView];

    
    snapView.backgroundColor = [UIColor purpleColor];
    
    
    
    NSTimeInterval timeIntervale = [self transitionDuration:transitionContext];
    
    
    [UIView animateWithDuration:timeIntervale delay:0.f usingSpringWithDamping:0.7f initialSpringVelocity:3.f options:UIViewAnimationOptionCurveLinear animations:^{
        snapView.frame = CGRectMake(0, 0, snapView.frame.size.width, snapView.frame.size.height);
        snapView.center = toVC.contentView.center;
        NSLog(@"❤️animationing-%@❤️", NSStringFromCGRect(snapView.frame));
    } completion:^(BOOL finished) {
        [transitionContext completeTransition:![transitionContext transitionWasCancelled]];
        [snapView removeFromSuperview];
        fromVC.contentView.alpha = 1;
        NSLog(@"❤️animation after-%@❤️", NSStringFromCGRect(snapView.frame));
    }];

}
@end

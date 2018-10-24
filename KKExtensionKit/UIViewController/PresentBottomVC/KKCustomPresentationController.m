//
//  KKCustomPresentationController.m
//  Node All-Star
//
//  Created by 于喜龙 on 2018/10/15.
//  Copyright © 2018 YH. All rights reserved.
//

#import "KKCustomPresentationController.h"

@interface KKCustomPresentationController ()

/** 背景 */
@property (nonatomic, strong) UIView *blackView;

@end

@implementation KKCustomPresentationController

#pragma mark - Lazy
- (UIView *)blackView {
    if (_blackView) return _blackView;
    _blackView = [UIView new];
    _blackView.backgroundColor = [UIColor.blackColor colorWithAlphaComponent:0.5];
    _blackView.frame = self.containerView.bounds;
    return _blackView;
}

- (instancetype)initWithPresentedViewController:(UIViewController *)presentedViewController presentingViewController:(UIViewController *)presentingViewController {
    self = [super initWithPresentedViewController:presentedViewController presentingViewController:presentingViewController];
    if (self) {
        self.kk_presentingVC = presentingViewController;
        self.presentedViewController.modalPresentationStyle = UIModalPresentationCustom;
    }
    return self;
}

- (void)presentationTransitionWillBegin {
    self.blackView.alpha = 0.0;
    [self.containerView addSubview:self.blackView];
    
    [UIView animateWithDuration:0.5 animations:^{
        self.blackView.alpha = 1.0;
    }];
}

- (void)dismissalTransitionWillBegin {
    [UIView animateWithDuration:0.5 animations:^{
        self.blackView.alpha = 0.0;
    }];
}

- (void)dismissalTransitionDidEnd:(BOOL)completed {
    if (completed) {
        [self.blackView removeFromSuperview];
    }
}

- (CGRect)frameOfPresentedViewInContainerView {
    
    CGRect containerViewBounds = self.containerView.bounds;
    CGSize presentedViewContentSize = [self sizeForChildContentContainer:self.presentedViewController withParentContainerSize:containerViewBounds.size];
    
    CGRect presentedViewControllerFrame = containerViewBounds;
    presentedViewControllerFrame.size.height = presentedViewContentSize.height;
    presentedViewControllerFrame.origin.y = CGRectGetMaxY(containerViewBounds) - presentedViewContentSize.height;
    return presentedViewControllerFrame;
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id<UIContentContainer>)container {
    [super preferredContentSizeDidChangeForChildContentContainer:container];
    
    if (container == self.presentedViewController )
        [self.containerView setNeedsLayout];
}

- (CGSize)sizeForChildContentContainer:(id<UIContentContainer>)container withParentContainerSize:(CGSize)parentSize {
    if (container == self.presentedViewController )
        return ((UIViewController *)container).preferredContentSize;
    else
        return [super sizeForChildContentContainer:container withParentContainerSize:parentSize];
}

- (void)containerViewWillLayoutSubviews
{
    [super containerViewWillLayoutSubviews];
    
    [UIView animateWithDuration:0.5 animations:^{
        self.presentedView.frame = self.frameOfPresentedViewInContainerView;
        self.blackView.frame = self.containerView.bounds;
    }];
}

#pragma mark -
#pragma mark UIViewControllerTransitioningDelegate

//| ----------------------------------------------------------------------------
//  If the modalPresentationStyle of the presented view controller is
//  UIModalPresentationCustom, the system calls this method on the presented
//  view controller's transitioningDelegate to retrieve the presentation
//  controller that will manage the presentation.  If your implementation
//  returns nil, an instance of UIPresentationController is used.
//
- (UIPresentationController*)presentationControllerForPresentedViewController:(UIViewController *)presented presentingViewController:(UIViewController *)presenting sourceViewController:(UIViewController *)source
{
    NSAssert(self.presentedViewController == presented, @"You didn't initialize %@ with the correct presentedViewController.  Expected %@, got %@.",
             self, presented, self.presentedViewController);
    
    return self;
}



@end

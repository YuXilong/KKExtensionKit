//
//  KKCustomPresentationController.h
//  Node All-Star
//
//  Created by 于喜龙 on 2018/10/15.
//  Copyright © 2018 YH. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface KKCustomPresentationController : UIPresentationController <UIViewControllerTransitioningDelegate>

/** 源视图 */
@property (nonatomic, strong) UIViewController *kk_presentingVC;

/** 点击背景自动Dismiss */
@property (nonatomic, assign) BOOL kk_autoDismiss;

@end

NS_ASSUME_NONNULL_END

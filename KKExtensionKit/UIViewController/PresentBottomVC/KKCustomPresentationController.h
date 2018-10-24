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

@end

NS_ASSUME_NONNULL_END

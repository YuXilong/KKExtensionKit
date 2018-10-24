//
//  UIViewController+KKCustomPresentAnimated.m
//  Node All-Star
//
//  Created by 于喜龙 on 2018/10/15.
//  Copyright © 2018 YH. All rights reserved.
//

#import "UIViewController+KKCustomPresentAnimated.h"
#import "KKCustomPresentationController.h"

@implementation UIViewController (KKCustomPresentAnimated)

- (void)kk_presentBottomVC:(UIViewController *)vc {
    KKCustomPresentationController *presentationController = [[KKCustomPresentationController alloc] initWithPresentedViewController:vc presentingViewController:self];
    vc.transitioningDelegate = presentationController;
    [self presentViewController:vc animated:YES completion:NULL];
}

@end

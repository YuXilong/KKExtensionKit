//
//  UIViewController+KKExtension.m
//  KKExtensionKit
//
//  Created by aoshi on 2018/10/28.
//

#import "UIViewController+KKExtension.h"
#import <KKExtensionKit/KKCustomPresentationController.h>

@implementation UIViewController (KKExtension)

+ (UIViewController *)kk_getTopViewController {
    UIWindow *window = [[UIApplication sharedApplication] delegate].window;
    return [self _getTopViewControllerWithRootViewController:window.rootViewController];
}

- (void)kk_presentBottomVC:(UIViewController *)vc autoDismiss:(BOOL)autoDismiss {
    KKCustomPresentationController *presentationController = [[KKCustomPresentationController alloc] initWithPresentedViewController:vc presentingViewController:self];
    presentationController.kk_autoDismiss = autoDismiss;
    vc.transitioningDelegate = presentationController;
    [self presentViewController:vc animated:YES completion:NULL];
}

+ (UIViewController *)_getTopViewControllerWithRootViewController:(UIViewController *)rootViewController {
    if ([rootViewController isKindOfClass:[UITabBarController class]]) {
        UITabBarController *tabbarController = (UITabBarController *)rootViewController;
        return [self _getTopViewControllerWithRootViewController:tabbarController.selectedViewController];
    } else if ([rootViewController isKindOfClass:[UINavigationController class]]) {
        UINavigationController *navigationController = (UINavigationController *)rootViewController;
        return [self _getTopViewControllerWithRootViewController:navigationController.visibleViewController];
    } else if (rootViewController.presentedViewController) {
        return [self _getTopViewControllerWithRootViewController:rootViewController.presentedViewController];
    } else {
        return rootViewController;
    }
}

@end

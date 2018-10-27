//
//  UIViewController+KKExtension.h
//  KKExtensionKit
//
//  Created by aoshi on 2018/10/28.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIViewController (KKExtension)

+ (__kindof UIViewController *)kk_getTopViewController;

- (void)kk_presentBottomVC:(__kindof UIViewController *)vc autoDismiss:(BOOL)autoDismiss;

@end

NS_ASSUME_NONNULL_END

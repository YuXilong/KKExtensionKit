//
//  MBProgressHUD+KKExtension.h
//  Node All-Star
//
//  Created by 于喜龙 on 2018/10/19.
//  Copyright © 2018 YH. All rights reserved.
//

#import <MBProgressHUD/MBProgressHUD.h>

NS_ASSUME_NONNULL_BEGIN

@interface MBProgressHUD (KKExtension)

/**
 显示带菊花的HUD

 @param view 父视图
 @param text 文本
 */
+ (instancetype)kk_showIndicatorHUDInView:(UIView *)view
                                     text:(NSString *)text;

/**
 只显示文本的HUD

 @param view 父视图
 @param text 文本
 @param time 消失时间
 */
+ (instancetype)kk_showTextHUDInView:(UIView *)view
                                text:(NSString *)text
                                time:(NSTimeInterval)time;

/**
 在Window层显示带菊花的HUD
 @param text 文本
 */
+ (instancetype)kk_showIndicatorHUDInWindowWithText:(NSString *)text;

/**
 在Window层显示文本的HUD
 
 @param text 文本
 @param time 消失时间
 */
+ (instancetype)kk_showTextHUDInWindowWithText:(NSString *)text
                                          time:(NSTimeInterval)time;

/**
 隐藏HUD

 @param view 父视图
 */
+ (void)kk_hidenHUDForView:(UIView *)view;

@end

NS_ASSUME_NONNULL_END

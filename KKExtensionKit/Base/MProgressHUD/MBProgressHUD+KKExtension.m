//
//  MBProgressHUD+KKExtension.m
//  Node All-Star
//
//  Created by 于喜龙 on 2018/10/19.
//  Copyright © 2018 YH. All rights reserved.
//

#import "MBProgressHUD+KKExtension.h"

@implementation MBProgressHUD (KKExtension)

+ (MBProgressHUD *)_createCommonHUDWithView:(UIView *)view {
    MBProgressHUD *HUD = [MBProgressHUD showHUDAddedTo:view animated:YES];
    HUD.animationType = MBProgressHUDAnimationFade;
    HUD.bezelView.color = [[UIColor blackColor] colorWithAlphaComponent:0.7];
    HUD.contentColor = [UIColor whiteColor];
    
    return HUD;
}

+ (instancetype)kk_showIndicatorHUDInView:(UIView *)view
                                     text:(NSString *)text {
    MBProgressHUD *HUD = [MBProgressHUD _createCommonHUDWithView:view];
    HUD.mode = MBProgressHUDModeIndeterminate;
    HUD.label.text = text;
    HUD.label.font = [UIFont systemFontOfSize:13];
    HUD.minSize = CGSizeMake(120, 120);
    return HUD;
}

+ (instancetype)kk_showTextHUDInView:(UIView *)view
                                text:(NSString *)text
                                time:(NSTimeInterval)time{
    MBProgressHUD *HUD = [MBProgressHUD _createCommonHUDWithView:view];
    HUD.mode = MBProgressHUDModeText;
    HUD.label.text = text;
    [HUD hideAnimated:YES afterDelay:time];
    return HUD;
}

+ (instancetype)kk_showIndicatorHUDInWindowWithText:(NSString *)text {
    return [MBProgressHUD kk_showIndicatorHUDInView:[UIApplication sharedApplication].keyWindow text:text];
}

+ (instancetype)kk_showTextHUDInWindowWithText:(NSString *)text
                                          time:(NSTimeInterval)time {
    return [MBProgressHUD kk_showTextHUDInView:[UIApplication sharedApplication].keyWindow
                                          text:text
                                          time:time];
}

+ (void)kk_hidenHUDForView:(UIView *)view {
    [MBProgressHUD hideHUDForView:view animated:YES];
}

@end

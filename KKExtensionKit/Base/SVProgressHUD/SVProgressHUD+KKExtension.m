//
//  SVProgressHUD+KKExtension.m
//  KKExtensionKit
//
//  Created by 于喜龙 on 2018/10/23.
//

#import "SVProgressHUD+KKExtension.h"

@implementation SVProgressHUD (KKExtension)

+ (void)kk_papareForCommonStyle {
    [SVProgressHUD setDefaultStyle:SVProgressHUDStyleDark];
    [SVProgressHUD setDefaultMaskType:SVProgressHUDMaskTypeClear];
    [SVProgressHUD setDefaultAnimationType:SVProgressHUDAnimationTypeNative];
    [SVProgressHUD setCornerRadius:8.0];
    [SVProgressHUD setBackgroundColor:[UIColor.darkGrayColor colorWithAlphaComponent:0.9]];
    [SVProgressHUD setForegroundColor:[UIColor whiteColor]];
    [SVProgressHUD setFont:[UIFont systemFontOfSize:14]];
    [SVProgressHUD setMinimumSize:CGSizeMake(120, 120)];
    [SVProgressHUD setMaximumDismissTimeInterval:1.5];
}

@end

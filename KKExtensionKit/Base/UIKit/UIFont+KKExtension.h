//
// Created by 于喜龙 on 2018/10/24.
//

#import <UIKit/UIKit.h>

@interface UIFont (KKExtension)

// PingFangSC-Semibold
+ (UIFont *)kk_PingFangSCSemiboldWithFontSize:(CGFloat)fontSize;

// PingFangSC-Medium
+ (UIFont *)kk_PingFangSCMediumWithFontSize:(CGFloat)fontSize;

// PingFangSC-Regular
+ (UIFont *)kk_PingFangSCRegularWithFontSize:(CGFloat)fontSize;

static inline UIFont * KKFont_PingFang_SC_Semibold(CGFloat fontSize) {
    return [UIFont kk_PingFangSCSemiboldWithFontSize:fontSize];
}

static inline UIFont * KKFont_PingFang_SC_Medium(CGFloat fontSize) {
    return [UIFont kk_PingFangSCMediumWithFontSize:fontSize];
}

static inline UIFont * KKFont_PingFang_SC_Regular(CGFloat fontSize) {
    return [UIFont kk_PingFangSCRegularWithFontSize:fontSize];
}


@end
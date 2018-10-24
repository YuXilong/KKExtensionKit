//
// Created by 于喜龙 on 2018/10/24.
//

#import "UIFont+KKExtension.h"


@implementation UIFont (KKExtension)


+ (UIFont *)kk_PingFangSCSemiboldWithFontSize:(CGFloat)fontSize {

    return [UIFont fontWithName:@"PingFangSC-Semibold" size:fontSize];
}

+ (UIFont *)kk_PingFangSCMediumWithFontSize:(CGFloat)fontSize {
    return [UIFont fontWithName:@"PingFangSC-Medium" size:fontSize];
}

+ (UIFont *)kk_PingFangSCRegularWithFontSize:(CGFloat)fontSize {
    return [UIFont fontWithName:@"PingFangSC-Regular" size:fontSize];
}


@end
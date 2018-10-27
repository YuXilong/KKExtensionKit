//
// Created by 于喜龙 on 2018/10/24.
//

#import <UIKit/UIKit.h>

@interface UIColor (KKExtension)

/* 十六进制转UIColor */
+ (UIColor *)kk_colorWithHex:(NSString *)hexString;

@end

static inline UIColor * KKColorFromHexString(NSString *hexString) {
    return [UIColor kk_colorWithHex:hexString];
}

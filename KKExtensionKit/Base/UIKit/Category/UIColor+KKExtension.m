//
// Created by 于喜龙 on 2018/10/24.
//

#import "UIColor+KKExtension.h"


@implementation UIColor (KKExtension)

// MARK: 十六进制转UIColor
+ (UIColor *)kk_colorWithHex:(NSString *)hexString {
    //字符串处理
    NSString *cString = [[hexString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] uppercaseString];

    //例子，stringToConvert #ffffff

    if ([cString length] < 6)
        return [UIColor clearColor];

    if ([cString hasPrefix:@"0X"])
        cString = [cString substringFromIndex:2];

    if ([cString hasPrefix:@"0x"])
        cString = [cString substringFromIndex:2];

    if ([cString hasPrefix:@"#"])
        cString = [cString substringFromIndex:1];//去掉头

    if ([cString length] != 6)//去头非十六进制，返回白色
        return [UIColor clearColor];

    //分别取RGB的值

    NSRange range;

    range.location =0;

    range.length =2;

    NSString *rString = [cString substringWithRange:range];



    range.location =2;

    NSString *gString = [cString substringWithRange:range];



    range.location =4;

    NSString *bString = [cString substringWithRange:range];



    unsigned int r, g, b;

    //NSScanner把扫描出的制定的字符串转换成Int类型

    [[NSScanner scannerWithString:rString] scanHexInt:&r];

    [[NSScanner scannerWithString:gString] scanHexInt:&g];

    [[NSScanner scannerWithString:bString] scanHexInt:&b];

    //转换为UIColor

    return [UIColor colorWithRed:((float) r /255.0f)

                           green:((float) g /255.0f)

                            blue:((float) b /255.0f)

                           alpha:1.0];
}

@end
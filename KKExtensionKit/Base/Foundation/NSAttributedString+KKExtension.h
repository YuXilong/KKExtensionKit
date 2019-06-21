//
// Created by 于喜龙 on 2018/10/24.
//

#import <Foundation/Foundation.h>

@interface NSAttributedString (KKExtension)

/// 富文本
/// @param string 内容
/// @param font 字体
/// @param color 颜色
+ (NSAttributedString *)kk_createWithString:(NSString *)string
                                       font:(UIFont *)font
                                      color:(UIColor *)color;

@end

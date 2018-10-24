//
// Created by 于喜龙 on 2018/10/24.
//

#import <Foundation/Foundation.h>

@interface NSAttributedString (KKExtension)

/**
 * 快速创建富文本
 * @param string 文本
 * @param font 字体
 * @param color 颜色
 */
+ (NSAttributedString *)kk_createWithString:(NSString *)string
                                       font:(UIFont *)font
                                      color:(UIColor *)color;
@end

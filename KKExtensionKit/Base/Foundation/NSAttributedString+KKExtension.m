//
// Created by 于喜龙 on 2018/10/24.
//

#import "NSAttributedString+KKExtension.h"
#import "NSObject+KKExtension.h"

@implementation NSAttributedString (KKExtension)

// MARK: 快捷创建富文本
+ (NSAttributedString *)kk_createWithString:(NSString *)string font:(UIFont *)font color:(UIColor *)color {
    if (![string kk_validString] || font == nil || color == nil) {
        return [[NSAttributedString alloc] init];
    }
    NSDictionary *attributes = @{NSFontAttributeName: font, NSForegroundColorAttributeName: color};
    return [[NSAttributedString alloc] initWithString:string attributes:attributes];
}

@end

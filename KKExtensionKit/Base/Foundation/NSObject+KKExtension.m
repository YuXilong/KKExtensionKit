//
// Created by 于喜龙 on 2018/10/24.
//

#import "NSObject+KKExtension.h"


@implementation NSObject (KKExtension)

// MARK: 验证是否有效的字符串
- (BOOL)kk_validString {
    if ([self.class isSubclassOfClass:[NSNull class]] || [self isKindOfClass:[NSNull class]] || self == nil || ![self isKindOfClass:NSString.class]) {
        return NO;
    }
    return YES;
}

// MARK: 转换为字符串
- (NSString *)kk_toString {
    if ([self kk_validString]) {
        return [NSString stringWithFormat:@"%@", self];
    }
    return @"";
}

- (NSNumber *)kk_toNumber {
    return nil;
}


@end
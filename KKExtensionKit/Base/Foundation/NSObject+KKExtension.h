//
// Created by 于喜龙 on 2018/10/24.
//

#import <Foundation/Foundation.h>

@interface NSObject (KKExtension)

/**
 * 验证是否为有效字符串
 */
- (BOOL)kk_validString;

/**
 * 转换为字符串
 */
- (NSString *)kk_toString;

/**
 * 转换为NSNumber
 */
- (NSNumber *)kk_toNumber;

@end

//
// Created by 于喜龙 on 2018/10/24.
//

#import <Foundation/Foundation.h>

@interface NSString (KKExtension)

/**
 * 验证是否为合法手机号
 */
- (BOOL)kk_validPhoneNumber;

/**
 * 验证是否为合法邮箱地址
 */
- (BOOL)kk_validEmail;


@end

//
// Created by 于喜龙 on 2018/10/24.
//

#import "NSString+KKExtension.h"


@implementation NSString (KKExtension)

// MARK: 验证是否为合法手机号
- (BOOL)kk_validPhoneNumber {

    NSString * MOBILE = @"^(13[0-9]|14[579]|15[0-3,5-9]|16[6]|17[0135678]|18[0-9]|19[89])\\d{8}$";
    NSPredicate *regextestmobile = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", MOBILE];
    if ([regextestmobile evaluateWithObject:self] == YES) {
        return YES;
    } else {
        return NO;
    }
}

// MARK: 验证是否为合法邮箱地址
- (BOOL)kk_validEmail {
    NSString *emailRegex = @"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}";
    NSPredicate *regextestEmail = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailRegex];
    if ([regextestEmail evaluateWithObject:self] == YES) {
        return YES;
    } else {
        return NO;
    }
}

@end
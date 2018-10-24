//
// Created by 于喜龙 on 2018/10/24.
//

#import "UIApplication+KKExtension.h"


@implementation UIApplication (KKExtension)

- (NSString *)kk_appVersion {
    return [[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleShortVersionString"];
}

- (NSString *)kk_appBundleID {
    return [[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleIdentifier"];
}


@end

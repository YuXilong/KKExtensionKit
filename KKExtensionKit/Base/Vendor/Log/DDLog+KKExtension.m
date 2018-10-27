//
//  DDLog+KKExtension.m
//  CocoaLumberjack
//
//  Created by aoshi on 2018/10/28.
//

#import "DDLog+KKExtension.h"

@implementation DDLog (KKExtension)

void __attribute__((constructor)) startLog() {
    // Xcode控制台输出日志
    [DDLog addLogger:[DDTTYLogger sharedInstance]];
}

@end

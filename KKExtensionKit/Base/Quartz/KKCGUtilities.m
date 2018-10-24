//
// Created by 于喜龙 on 2018/10/24.
//

#import "KKCGUtilities.h"


@implementation KKCGUtilities

CGFloat _KKScreenScale() {
    static CGFloat scale;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        scale = UIScreen.mainScreen.scale;
    });
    return scale;
}

CGSize _KKScreenSize() {
    static CGSize size;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        size = UIScreen.mainScreen.bounds.size;
    });
    return size;
}

UIEdgeInsets KKWindowSafeInsets() {
    if (@available(iOS 11.0, *)) {
        return [UIApplication sharedApplication].keyWindow.safeAreaInsets;
    } else {
        // Fallback on earlier versions
        return UIEdgeInsetsZero;
    }
}

@end

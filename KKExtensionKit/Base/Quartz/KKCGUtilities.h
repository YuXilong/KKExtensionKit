//
// Created by 于喜龙 on 2018/10/24.
//

#import <Foundation/Foundation.h>

/// 屏幕缩放比
CGFloat _KKScreenScale(void);

/// 屏幕尺寸
CGSize _KKScreenSize(void);

/// 安全区
UIEdgeInsets KKWindowSafeInsets(void);


#ifndef KKScreenSize
#define KKScreenSize _KKScreenSize()
#endif

#ifndef KKScreenScale
#define KKScreenScale _KKScreenScale()
#endif

#ifndef KKScreenWidth
#define KKScreenWidth _KKScreenSize().width
#endif

#ifndef KKScreenHeight
#define KKScreenHeight _KKScreenSize().height
#endif

#ifndef KKSafeInsets
#define KKSafeInsets KKWindowSafeInsets()
#endif

#ifndef KKSafeInsetsTop
#define KKSafeInsetsTop KKWindowSafeInsets().top
#endif

#ifndef KKSafeInsetsBottom
#define KKSafeInsetsBottom KKWindowSafeInsets().bottom
#endif

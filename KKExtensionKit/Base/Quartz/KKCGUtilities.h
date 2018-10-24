//
// Created by 于喜龙 on 2018/10/24.
//

#import <Foundation/Foundation.h>

@interface KKCGUtilities : NSObject

CGFloat _KKScreenScale(void);

CGSize _KKScreenSize(void);

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



@end

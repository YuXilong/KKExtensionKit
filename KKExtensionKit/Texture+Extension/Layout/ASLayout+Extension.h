//
//  ASLayout+Extension.h
//  KKExtensionKit
//
//  Created by yuxilong on 2019/6/21.
//

#ifndef ASLayout_Extension_h
#define ASLayout_Extension_h

#import <AsyncDisplayKit/AsyncDisplayKit.h>

#define KK_AS_INLINE static inline

/// 比例布局
KK_AS_INLINE ASRatioLayoutSpec *
RatioSpec(id<ASLayoutElement> child, CGFloat ratio) {
    ASRatioLayoutSpec *spec = [ASRatioLayoutSpec ratioLayoutSpecWithRatio:ratio
                                                                    child:child];
    spec.style.flexShrink   = 1.0;
    spec.style.flexGrow     = 1.0;
    return spec;
}

/// 图片自适应比例布局：根据图片的宽高自适应
KK_AS_INLINE ASRatioLayoutSpec *
ImageRatioSpec(ASImageNode *child) {
    CGFloat ratio = child.image.size.height / child.image.size.width;
    ASRatioLayoutSpec *spec = [ASRatioLayoutSpec ratioLayoutSpecWithRatio:ratio
                                                                    child:child];
    spec.style.flexShrink   = 1.0;
    spec.style.flexGrow     = 1.0;
    return spec;
}

/// 居中布局：XY相对于父控件居中
KK_AS_INLINE ASCenterLayoutSpec *
CenterSpec(id<ASLayoutElement> child) {
    ASCenterLayoutSpecCenteringOptions centeringOptions = ASCenterLayoutSpecCenteringXY;
    ASCenterLayoutSpecSizingOptions sizeOptions = ASCenterLayoutSpecSizingOptionDefault;
    ASCenterLayoutSpec *spec = [ASCenterLayoutSpec centerLayoutSpecWithCenteringOptions:centeringOptions
                                                                          sizingOptions:sizeOptions
                                                                                  child:child];
    return spec;
}

/// 上下覆盖布局
KK_AS_INLINE ASOverlayLayoutSpec *
OStack(id<ASLayoutElement> child, id<ASLayoutElement> overlay) {
    ASOverlayLayoutSpec *spec = [ASOverlayLayoutSpec overlayLayoutSpecWithChild:child
                                                                        overlay:overlay];
    return spec;
}

/// 背景布局
KK_AS_INLINE ASBackgroundLayoutSpec *
BStack(id<ASLayoutElement> child, id<ASLayoutElement> background) {
    ASBackgroundLayoutSpec *spec = [ASBackgroundLayoutSpec backgroundLayoutSpecWithChild:child
                                                                              background:background];
    return spec;
}

/// 盒子布局
KK_AS_INLINE ASInsetLayoutSpec *
InsetSpec(UIEdgeInsets insets, id<ASLayoutElement> child) {
    ASInsetLayoutSpec *spec = [ASInsetLayoutSpec insetLayoutSpecWithInsets:insets
                                                                     child:child];
    return spec;
}

/// 横向布局
KK_AS_INLINE ASStackLayoutSpec *
HStack(NSArray<id<ASLayoutElement>> *children, CGFloat spacing) {
    ASStackLayoutSpec *spec = [ASStackLayoutSpec stackLayoutSpecWithDirection:ASStackLayoutDirectionHorizontal
                                                                      spacing:spacing
                                                               justifyContent:ASStackLayoutJustifyContentStart
                                                                   alignItems:ASStackLayoutAlignItemsCenter
                                                                     children:children];
    return spec;
}

/// 横向间距布局
KK_AS_INLINE ASStackLayoutSpec *
HBetweenStack(NSArray<id<ASLayoutElement>> *children) {
    ASStackLayoutSpec *spec = [ASStackLayoutSpec stackLayoutSpecWithDirection:ASStackLayoutDirectionHorizontal
                                                                      spacing:0.0
                                                               justifyContent:ASStackLayoutJustifyContentSpaceBetween
                                                                   alignItems:ASStackLayoutAlignItemsCenter
                                                                     children:children];
    return spec;
}

/// 横向等分布局
KK_AS_INLINE ASStackLayoutSpec *
HAroundStack(NSArray<id<ASLayoutElement>> *children) {
    ASStackLayoutSpec *spec = [ASStackLayoutSpec stackLayoutSpecWithDirection:ASStackLayoutDirectionHorizontal
                                                                      spacing:0.0
                                                               justifyContent:ASStackLayoutJustifyContentSpaceAround
                                                                   alignItems:ASStackLayoutAlignItemsCenter
                                                                     children:children];
    return spec;
}

/// 横向居中布局
KK_AS_INLINE ASStackLayoutSpec *
HCenterStack(NSArray<id<ASLayoutElement>> *children, CGFloat spacing) {
    ASStackLayoutSpec *spec = [ASStackLayoutSpec stackLayoutSpecWithDirection:ASStackLayoutDirectionHorizontal
                                                                      spacing:spacing
                                                               justifyContent:ASStackLayoutJustifyContentCenter
                                                                   alignItems:ASStackLayoutAlignItemsCenter
                                                                     children:children];
    return spec;
}

/// 横向尾部布局
KK_AS_INLINE ASStackLayoutSpec *
HEndStack(NSArray<id<ASLayoutElement>> *children, CGFloat spacing) {
    ASStackLayoutSpec *spec = [ASStackLayoutSpec stackLayoutSpecWithDirection:ASStackLayoutDirectionHorizontal
                                                                      spacing:spacing
                                                               justifyContent:ASStackLayoutJustifyContentEnd
                                                                   alignItems:ASStackLayoutAlignItemsCenter
                                                                     children:children];
    return spec;
}

/// 纵向布局
KK_AS_INLINE ASStackLayoutSpec *
VStack(NSArray<id<ASLayoutElement>> *children, CGFloat spacing) {
    ASStackLayoutSpec *spec = [ASStackLayoutSpec stackLayoutSpecWithDirection:ASStackLayoutDirectionVertical
                                                                      spacing:spacing
                                                               justifyContent:ASStackLayoutJustifyContentStart
                                                                   alignItems:ASStackLayoutAlignItemsStretch
                                                                     children:children];
    return spec;
}

/// 纵向间距布局
KK_AS_INLINE ASStackLayoutSpec *
VBetweenStack(NSArray<id<ASLayoutElement>> *children) {
    ASStackLayoutSpec *spec = [ASStackLayoutSpec stackLayoutSpecWithDirection:ASStackLayoutDirectionVertical
                                                                      spacing:0.0
                                                               justifyContent:ASStackLayoutJustifyContentSpaceBetween
                                                                   alignItems:ASStackLayoutAlignItemsStretch
                                                                     children:children];
    return spec;
}

/// 横向等分布局
KK_AS_INLINE ASStackLayoutSpec *
VAroundStack(NSArray<id<ASLayoutElement>> *children) {
    ASStackLayoutSpec *spec = [ASStackLayoutSpec stackLayoutSpecWithDirection:ASStackLayoutDirectionVertical
                                                                      spacing:0.0
                                                               justifyContent:ASStackLayoutJustifyContentSpaceAround
                                                                   alignItems:ASStackLayoutAlignItemsStretch
                                                                     children:children];
    return spec;
}

/// 横向居中布局
KK_AS_INLINE ASStackLayoutSpec *
VCenterStack(NSArray<id<ASLayoutElement>> *children, CGFloat spacing) {
    ASStackLayoutSpec *spec = [ASStackLayoutSpec stackLayoutSpecWithDirection:ASStackLayoutDirectionVertical
                                                                      spacing:spacing
                                                               justifyContent:ASStackLayoutJustifyContentCenter
                                                                   alignItems:ASStackLayoutAlignItemsStretch
                                                                     children:children];
    return spec;
}

/// 横向尾部布局
KK_AS_INLINE ASStackLayoutSpec *
VEndStack(NSArray<id<ASLayoutElement>> *children, CGFloat spacing) {
    ASStackLayoutSpec *spec = [ASStackLayoutSpec stackLayoutSpecWithDirection:ASStackLayoutDirectionVertical
                                                                      spacing:spacing
                                                               justifyContent:ASStackLayoutJustifyContentEnd
                                                                   alignItems:ASStackLayoutAlignItemsStretch
                                                                     children:children];
    return spec;
}

#endif /* ASLayout_Extension_h */

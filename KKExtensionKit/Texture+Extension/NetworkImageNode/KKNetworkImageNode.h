//
//  KKNetworkImageNode.h
//  Chatter
//
//  Created by JackYu on 2019/4/8.
//  Copyright © 2019 LiaoKeTechnology. All rights reserved.
//

#import <AsyncDisplayKit/AsyncDisplayKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface KKNetworkImageNode : ASNetworkImageNode<ASNetworkImageNodeDelegate>

/**
 *  设置图片的URL
 */
@property (nonatomic, strong) NSString *kk_URL;

@end

NS_ASSUME_NONNULL_END

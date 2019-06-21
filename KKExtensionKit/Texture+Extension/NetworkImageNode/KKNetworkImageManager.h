//
//  KKNetworkImageManager.h
//  CocoaLumberjack
//
//  Created by yuxilong on 2019/6/21.
//

#import <SDWebImage/SDWebImage.h>
#import <AsyncDisplayKit/AsyncDisplayKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface KKNetworkImageManager : SDWebImageManager<ASImageCacheProtocol, ASImageDownloaderProtocol>

/**
 * Returns global shared manager instance.
 */
@property (nonatomic, class, readonly, nonnull) KKNetworkImageManager *manager;

@end

NS_ASSUME_NONNULL_END

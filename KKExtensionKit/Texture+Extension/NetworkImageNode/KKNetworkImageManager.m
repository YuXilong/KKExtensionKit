//
//  KKNetworkImageManager.m
//  CocoaLumberjack
//
//  Created by yuxilong on 2019/6/21.
//

#import "KKNetworkImageManager.h"

@implementation KKNetworkImageManager

+ (void)initialize {
    [super initialize];
    // 禁止解压缩操作 可以解决内存暴增问题
//    [[KKNetworkImageManager sharedManager].imageCache setShouldDecompressImages:NO];
//    [[KKNetworkImageManager sharedManager].imageDownloader setShouldDecompressImages:NO];
}

+ (nonnull instancetype)manager {
    static dispatch_once_t once;
    static id instance;
    dispatch_once(&once, ^{
        instance = [self new];
    });
    return instance;
}

#pragma mark - ASImageCacheProtocol / ASImageDownloaderProtocol
- (void)cachedImageWithURL:(NSURL *)URL
             callbackQueue:(dispatch_queue_t)callbackQueue
                completion:(ASImageCacherCompletion)completion
{
    SDImageCache *cache = self.imageCache;
    UIImage *image = [cache imageFromDiskCacheForKey:[self cacheKeyForURL:URL]];
    dispatch_async(callbackQueue, ^{
        completion(image);
    });
}
- (void)cancelImageDownloadForIdentifier:(id)downloadIdentifier
{
    [(SDWebImageCombinedOperation *)downloadIdentifier cancel];
}
- (id)downloadImageWithURL:(NSURL *)URL
             callbackQueue:(dispatch_queue_t)callbackQueue
          downloadProgress:(ASImageDownloaderProgress)downloadProgress
                completion:(ASImageDownloaderCompletion)completion
{
 
    __block SDWebImageCombinedOperation *op;
    op = [self loadImageWithURL:URL
                        options:SDWebImageRetryFailed
                       progress:^(NSInteger receivedSize, NSInteger expectedSize, NSURL *targetURL) {
                           dispatch_async(callbackQueue, ^{
                               !downloadProgress ?: downloadProgress(receivedSize / expectedSize);
                           });
                       }
                      completed:^(UIImage *image, NSData *data, NSError *error, SDImageCacheType cacheType, BOOL finished, NSURL *imageURL) {
                          if (finished) {
                              dispatch_async(callbackQueue, ^{
                                  !completion ?: completion(image, error, op, nil);
                              });
                          }
                      }];
    return op;
}

@end

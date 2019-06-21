//
//  KKNetworkImageNode.m
//  Chatter
//
//  Created by JackYu on 2019/4/8.
//  Copyright © 2019 LiaoKeTechnology. All rights reserved.
//

#import "KKNetworkImageNode.h"
#import "KKNetworkImageManager.h"

@implementation KKNetworkImageNode {
    CAGradientLayer *_imageLayer;
}

- (instancetype)init
{
    self = [super initWithCache:[KKNetworkImageManager manager] downloader:[KKNetworkImageManager manager]];
    if (self) {
    }
    return self;
}

#pragma mark - Setter/Getter
- (void)setKk_URL:(NSString *)kk_URL {
    _kk_URL = kk_URL;
    NSURL *imageURL = [NSURL URLWithString:kk_URL];
    KKNetworkImageManager *manager = [KKNetworkImageManager manager];
    NSString *imageCachedKey = [manager cacheKeyForURL:imageURL];
    [manager.imageCache containsImageForKey:imageCachedKey
                                  cacheType:SDImageCacheTypeAll
                                 completion:^(SDImageCacheType containsCacheType) {
                                     if (containsCacheType == SDImageCacheTypeNone) {
                                         self.image = nil;
                                         self.URL = imageURL;
                                     } else {
                                         [self _queryCachedImageForKey:imageCachedKey];
                                     }
                                 }];
}

- (void)_queryCachedImageForKey:(NSString *)key
{
    KKNetworkImageManager *manager = [KKNetworkImageManager manager];
    [manager.imageCache queryImageForKey:key
                                 options:SDWebImageRetryFailed
                                 context:nil
                              completion:^(UIImage *image, NSData *data, SDImageCacheType cacheType) {
                                  self.URL = nil;
                                  self.image = image;
                              }];
}

#pragma mark - Display State
- (void)didEnterPreloadState {
    [super didEnterPreloadState];
}

- (void)didExitPreloadState {
    [super didExitPreloadState];
}

- (void)didEnterDisplayState {
    [super didEnterDisplayState];
}

- (void)didExitDisplayState {
    [super didExitDisplayState];
}

@end

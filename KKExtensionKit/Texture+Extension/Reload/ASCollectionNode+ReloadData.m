//
//  ASCollectionNode+ReloadData.m
//  Chatter
//
//  Created by JackYu on 2019/4/10.
//  Copyright © 2019 LiaoKeTechnology. All rights reserved.
//

#import "ASCollectionNode+ReloadData.h"

@implementation ASCollectionNode (ReloadData)

#pragma mark - Getters / Setters
static char kAssociatedObjectKey_toBeReloadIndexPaths;
- (void)setKk_toBeReloadIndexPaths:(NSMutableArray<NSIndexPath *> *)kk_toBeReloadIndexPaths
{
    objc_setAssociatedObject(self, &kAssociatedObjectKey_toBeReloadIndexPaths, kk_toBeReloadIndexPaths, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}
- (NSMutableArray<NSIndexPath *> *)kk_toBeReloadIndexPaths
{
    return objc_getAssociatedObject(self, &kAssociatedObjectKey_toBeReloadIndexPaths);
}

#pragma mark - Interface
- (void)processFlashingCellNode:(ASCellNode *)cellNode atIndexPath:(NSIndexPath *)indexPath
{
    if ([self.kk_toBeReloadIndexPaths containsObject:indexPath]) {
        cellNode.neverShowPlaceholders = YES;
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            cellNode.neverShowPlaceholders = NO;
        });
    } else {
        cellNode.neverShowPlaceholders = NO;
    }
}
- (void)kk_reloadData
{
    [self kk_reloadDataWithComplete:^{}];
}
- (void)kk_reloadDataWithComplete:(void(^)(void))completion
{
    self.kk_toBeReloadIndexPaths = self.indexPathsForVisibleItems.mutableCopy;
    [self performBatchAnimated:NO updates:^{
        [self reloadDataWithCompletion:completion];
    } completion:nil];
}

@end

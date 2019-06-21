//
//  ASTableNode+ReloadData.h
//  Chatter
//
//  Created by JackYu on 2019/4/10.
//  Copyright © 2019 LiaoKeTechnology. All rights reserved.
//

#import <AsyncDisplayKit/AsyncDisplayKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ASTableNode (ReloadData)
/**
 *  解决reloaddata闪烁
 */
@property (nonatomic, strong) NSMutableArray<NSIndexPath *> *kk_toBeReloadIndexPaths;

/**
 处理闪烁问题
 
 @param cellNode cellNode
 @param indexPath 当前索引
 */
- (void)processFlashingCellNode:(ASCellNode *)cellNode atIndexPath:(NSIndexPath *)indexPath;
/**
 *  无闪烁reloadData
 */
- (void)kk_reloadData;
- (void)kk_reloadDataWithComplete:(void(^)(void))completion;
@end

NS_ASSUME_NONNULL_END

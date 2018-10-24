//
//  KKExtensionKitMacro.h
//  KKExtensionKit
//
//  Created by 于喜龙 on 2018/10/24.
//

#import <pthread.h>
#import <CocoaLumberjack/CocoaLumberjack.h>

#ifndef KKExtensionKitMacro_h
#define KKExtensionKitMacro_h

#ifdef __cplusplus
#define KK_EXTERN_C_BEGIN  extern "C" {
#define KK_EXTERN_C_END  }
#else
#define KK_EXTERN_C_BEGIN
#define KK_EXTERN_C_END
#endif

KK_EXTERN_C_BEGIN

#ifndef weakify
    #if DEBUG
        #if __has_feature(objc_arc)
            #define weakify(object) autoreleasepool{} __weak __typeof__(object) weak##_##object = object;
        #else
            #define weakify(object) autoreleasepool{} __block __typeof__(object) block##_##object = object;
        #endif
    #else
        #if __has_feature(objc_arc)
            #define weakify(object) try{} @finally{} {} __weak __typeof__(object) weak##_##object = object;
        #else
            #define weakify(object) try{} @finally{} {} __block __typeof__(object) block##_##object = object;
        #endif
    #endif
#endif

#ifndef strongify
    #if DEBUG
        #if __has_feature(objc_arc)
            #define strongify(object) autoreleasepool{} __typeof__(object) object = weak##_##object;
        #else
            #define strongify(object) autoreleasepool{} __typeof__(object) object = block##_##object;
        #endif
    #else
        #if __has_feature(objc_arc)
            #define strongify(object) try{} @finally{} __typeof__(object) object = weak##_##object;
        #else
            #define strongify(object) try{} @finally{} __typeof__(object) object = block##_##object;
        #endif
    #endif
#endif

// MARK: 是否在主线程
static inline BOOL kk_dispatch_is_on_main_queue() {
    return pthread_main_np() != 0;
}

// MARK: 在主线程执行 异步
static inline void kk_dispatch_async_on_main_queue(void (^block)()) {
    if (pthread_main_np()) {
        block();
    } else {
        dispatch_async(dispatch_get_main_queue(), block);
    }
}

// MARK: 在主线程执行 同步
static inline void kk_dispatch_sync_on_main_queue(void (^block)()) {
    if (pthread_main_np()) {
        block();
    } else {
        dispatch_sync(dispatch_get_main_queue(), block);
    }
}

// MARK: 在全局线程执行 异步
static inline void kk_dispatch_async_on_global_queue(void (^block)()) {
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), block);
}

// MARK: 延迟执行在主线程
static inline void kk_dispatch_after_on_main_queue(CGFloat delayTime, void (^block)()) {
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(delayTime * NSEC_PER_SEC)), dispatch_get_main_queue(), block);
}

// MARK: 延迟执行在全局线程
static inline void kk_dispatch_after_on_global_queue(CGFloat delayTime, void (^block)()) {
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(delayTime * NSEC_PER_SEC)), dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), block);
}

// MARK: Log
DDLogLevel ddLogLevel = DDLogLevelDebug;


KK_EXTERN_C_END

#endif /* KKExtensionKitMacro_h */

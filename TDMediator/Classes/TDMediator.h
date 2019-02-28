//
//  TDMediator.h
//  Pods-TDMediator_Tests
//
//  Created by tiandy on 2019/2/28.
//

#import <UIKit/UIKit.h>


@interface TDMediator : NSObject

+ (instancetype)sharedInstance;

// 远程App调用入口
- (id)performActionWithUrl:(NSURL *)url completion:(void(^)(NSDictionary *info))completion;
// 本地组件调用入口
- (id)performTarget:(NSString *)targetName action:(NSString *)actionName params:(NSDictionary *)params shouldCacheTarget:(BOOL)shouldCacheTarget;
//清理缓存
- (void)releaseCachedTargetWithTargetName:(NSString *)targetName;

@end


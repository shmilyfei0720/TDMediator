//
//  TDMediator+TDVideoPlayModuleActions.m
//  Pods
//
//  Created by tiandy on 2019/2/28.
//

#import "TDMediator+TDVideoPlayModuleActions.h"

NSString * const kTDTargetVideoPlayModule = @"VideoPlayModule";
NSString * const kTDActionNormalVideoViewController = @"getNormalVideoViewController";

@implementation TDMediator (TDVideoPlayModuleActions)

-(UIViewController *)tdVideoPlayModule_localVideoViewControllerForFile:(NSString *)filePath {
    UIViewController *viewController = [self performTarget:kTDTargetVideoPlayModule
                                                    action:kTDActionNormalVideoViewController
                                                    params:@{@"filePath":@"test1"}
                                         shouldCacheTarget:NO
                                        ];
    if ([viewController isKindOfClass:[UIViewController class]]) {
        // view controller 交付出去之后，可以由外界选择是push还是present
        return viewController;
    } else {
        // 这里处理异常场景，具体如何处理取决于产品
        return [[UIViewController alloc] init];
    }
}

@end

//
//  TDMediator+TDUserModule.m
//  TDUserModule_Example
//
//  Created by tiandy on 2019/3/15.
//  Copyright © 2019 707357307@qq.com. All rights reserved.
//

#import "TDMediator+TDUserModule.h"
static NSString * const kTargetTDUserModule = @"TDUserModule";
static NSString * const kActionGetUserLoginViewController = @"getUserLoginViewController";

@implementation TDMediator (TDUserModule)

-(UIViewController *)TDUserModule_getUserLoginViewController {
    UIViewController *vc = [self performTarget:kTargetTDUserModule action:kActionGetUserLoginViewController params:nil shouldCacheTarget:NO];
    if ([vc isKindOfClass:[UIViewController class]]) {
        // view controller 交付出去之后，可以由外界选择是push还是present
        return vc;
    } else {
        // 这里处理异常场景，具体如何处理取决于产品
        return [[UIViewController alloc] init];
    }
}

@end

//
//  AccountManager.m
//  nightModelDemo
//
//  Created by chenTengfei on 15/3/19.
//  Copyright (c) 2015年 chenTengfei. All rights reserved.
//

#import "AccountManager.h"

@interface AccountManager ()

//@property (nonatomic, strong) NSString *isNigthStr;

@end

@implementation AccountManager

#pragma mark - 私有方法
- (void)setIsNight:(BOOL)isNight {
    _isNight = isNight;
    
    if (isNight) {
        [[NSNotificationCenter defaultCenter] postNotificationName:kNightDayModelNotification object:nil];
    } else {
        [[NSNotificationCenter defaultCenter] postNotificationName:kLightDayModelNotification object:nil];
    }
}

#pragma marl - 公共方法
+ (AccountManager *)sharedInstance {
    static AccountManager *sharedInstance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[AccountManager alloc] init];
        [sharedInstance loadAccountInfoFromDisk];
    });
    
    return sharedInstance;
}

- (void)saveAccountInfoToDisk {
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    
    NSString  *isNigthStr;
    if (self.isNight) {
        isNigthStr = @"yes";
    } else {
        isNigthStr = @"no";
    }
    [ud setObject:isNigthStr forKey:@"isNight"];
    
    [ud synchronize];
    
}

- (void)loadAccountInfoFromDisk {
    
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    
    NSString  *isNigthStr = [ud objectForKey:@"isNight"];
    self.isNight = [isNigthStr isEqualToString:@"yes"];

}


@end

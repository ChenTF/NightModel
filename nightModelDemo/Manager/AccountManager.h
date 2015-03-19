//
//  AccountManager.h
//  nightModelDemo
//
//  Created by chenTengfei on 15/3/19.
//  Copyright (c) 2015年 chenTengfei. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AccountManager : NSObject

@property (nonatomic, assign) BOOL isNight;

+ (AccountManager *)sharedInstance;

- (void)saveAccountInfoToDisk;

- (void)loadAccountInfoFromDisk;

@end

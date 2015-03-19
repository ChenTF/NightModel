//
//  BaseViewController.h
//  nightModelDemo
//
//  Created by chenTengfei on 15/3/19.
//  Copyright (c) 2015年 chenTengfei. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BaseViewController : UIViewController

/**
 *  设置白天模式(公共接口)
 */
- (void)setLightDayModel;

/**
 *  设置夜间模式(公共接口)
 */
- (void)setNightDayModel;

@end

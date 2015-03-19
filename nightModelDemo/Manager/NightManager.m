//
//  NightManager.m
//  nightModelDemo
//
//  Created by chenTengfei on 15/3/19.
//  Copyright (c) 2015年 chenTengfei. All rights reserved.
//

#import "NightManager.h"


@implementation NightManager

+ (void)setLabelColorWithLabel:(UILabel *)label {
    
    if ([AccountManager sharedInstance].isNight) {
        label.textColor = kLabelNightColor;
    } else {
        label.textColor = kLabelLightColor;
    }
    
}

+ (void)setBackgroundColorWithView:(UIView *)view {
    if ([AccountManager sharedInstance].isNight) {
        view.backgroundColor = kBackgroundViewNightColor;
    } else {
        view.backgroundColor = kBackgroundViewLightColor;
    }
}

+ (void)setButtonTitleColorWithButton:(UIButton *)button {
    if ([AccountManager sharedInstance].isNight) {
        [button setTitleColor:kButtonTitleNightColor forState:UIControlStateNormal];
    } else {
        [button setTitleColor:kButtonTitleLightColor forState:UIControlStateNormal];
    }
}
@end

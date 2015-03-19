//
//  ColorMacro.h
//  nightModelDemo
//
//  Created by chenTengfei on 15/3/19.
//  Copyright (c) 2015年 chenTengfei. All rights reserved.
//

#ifndef nightModelDemo_ColorMacro_h
#define nightModelDemo_ColorMacro_h

#define RGBA(R/*红*/, G/*绿*/, B/*蓝*/, A/*透明*/) \
[UIColor colorWithRed:R/255.f green:G/255.f blue:B/255.f alpha:A]

// 所有夜间模式颜色都应放到这里,方便后期维护与更改!! 不要偷懒哦
#define kLabelNightColor [UIColor whiteColor]
#define kLabelLightColor [UIColor blackColor]

#define kBackgroundViewNightColor [UIColor blackColor]
#define kBackgroundViewLightColor [UIColor whiteColor]

#define kButtonTitleNightColor [UIColor whiteColor]
#define kButtonTitleLightColor [UIColor blueColor]


#endif

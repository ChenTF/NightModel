//
//  BaseViewController.m
//  nightModelDemo
//
//  Created by chenTengfei on 15/3/19.
//  Copyright (c) 2015年 chenTengfei. All rights reserved.
//

#import "BaseViewController.h"
#import "AccountManager.h"

@interface BaseViewController ()

@end

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    if ([AccountManager sharedInstance].isNight) {
        [self setNightDayModel];
    } else {
        [self setLightDayModel];
    }
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(setLightDayModel) name:kLightDayModelNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(setNightDayModel) name:kNightDayModelNotification object:nil];
    
}

- (void)setLightDayModel {
    NSLog(@"-------设置白天模式");
}

- (void)setNightDayModel {
    NSLog(@"-------设置夜晚模式");
}

- (void)dealloc {
    
    // 必须在dealloc方法中移除观察
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

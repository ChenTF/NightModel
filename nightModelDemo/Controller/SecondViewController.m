//
//  SecondViewController.m
//  nightModelDemo
//
//  Created by chenTengfei on 15/3/19.
//  Copyright (c) 2015年 chenTengfei. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.title = @"Second";
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

#pragma mark - 夜间模式
- (void)setNightDayModel {
    
    [NightManager setBackgroundColorWithView:self.view];
}

- (void)setLightDayModel {
    
    [NightManager setBackgroundColorWithView:self.view];
}

@end

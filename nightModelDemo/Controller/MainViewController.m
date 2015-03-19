//
//  MainViewController.m
//  nightModelDemo
//
//  Created by chenTengfei on 15/3/19.
//  Copyright (c) 2015年 chenTengfei. All rights reserved.
//

#import "MainViewController.h"
#import "FirstViewController.h"
#import "AccountManager.h"

@interface MainViewController ()

@property (weak, nonatomic) IBOutlet UIButton *mainButton;

@property (weak, nonatomic) IBOutlet UIButton *exchangeButton;

@end

@implementation MainViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.title = @"Main";
    
    
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
- (IBAction)MainBlick:(UIButton *)sender {
    
    FirstViewController *firstVC = [[FirstViewController alloc] init];
    
    [self.navigationController pushViewController:firstVC animated:YES];
}

/**
 *  切换夜间模式
 *
 *  @param sender <#sender description#>
 */
- (IBAction)exchangeModel:(UIButton *)sender {
    
    [AccountManager sharedInstance].isNight = ![AccountManager sharedInstance].isNight;
}

#pragma mark - 夜间模式
- (void)setNightDayModel {
    
    //某类(2个以上)设置 写到NightManager中
    [NightManager setBackgroundColorWithView:self.view];
    [NightManager setButtonTitleColorWithButton:self.mainButton];
    [NightManager setButtonTitleColorWithButton:self.exchangeButton];
    
    // 个别特殊单独设置
}

- (void)setLightDayModel {
    
    //某类(2个以上)设置 写到NightManager中
    [NightManager setBackgroundColorWithView:self.view];
    [NightManager setButtonTitleColorWithButton:self.mainButton];
    [NightManager setButtonTitleColorWithButton:self.exchangeButton];
    
    // 个别特殊单独设置
}

@end

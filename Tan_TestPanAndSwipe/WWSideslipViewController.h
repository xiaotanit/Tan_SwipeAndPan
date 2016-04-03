//
//  WWSideslipViewController.h
//  WWSideslipViewControllerSample
//
//  Created by 王维 on 14-8-26.
//  Copyright (c) 2014年 wangwei. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WWSideslipViewController : UIViewController{

}

@property (nonatomic,strong) UIViewController * leftControl; //左视图
@property (nonatomic,strong) UIViewController * mainControl; //主视图

//滑动速度系数-建议在0.5-1之间。默认为0.5
@property (assign,nonatomic) CGFloat speedf;

//单击手势
@property (strong) UITapGestureRecognizer *sideslipTapGes;

- (instancetype)initWithLeftView:(UIViewController *)LeftView andMainView:(UIViewController *)MainView;

//恢复位置
-(void)showMainView;

//显示左视图
-(void)showLeftView;

@end

//
//  LeftViewController.m
//  Tan_TestPanAndSwipe
//
//  Created by PX_Mac on 16/3/27.
//  Copyright © 2016年 PX_Mac. All rights reserved.
//

#import "LeftViewController.h"

@interface LeftViewController ()

@end

@implementation LeftViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor yellowColor];
    self.view.layer.borderColor = [UIColor redColor].CGColor;
    self.view.layer.borderWidth = 2.f;
    
    CGFloat screenWidth = [UIScreen mainScreen].bounds.size.width;
    
    UILabel *lbl = [[UILabel alloc] initWithFrame:CGRectMake(0, 100, screenWidth, 300)];
    [self.view addSubview:lbl];
    
    lbl.text = @"我是左视图, 我是左视图, 我是左视图, 我是左视图";
    
    lbl.font = [UIFont systemFontOfSize:60];
    lbl.numberOfLines = 0;
    
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

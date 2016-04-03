//
//  ViewController.m
//  Tan_TestPanAndSwipe
//
//  Created by PX_Mac on 16/3/27.
//  Copyright © 2016年 PX_Mac. All rights reserved.
//

#import "ViewController.h"
#import "MemberModel.h"
#import "TanTableViewCell.h"

@interface ViewController () <UITableViewDataSource, UITableViewDelegate, TanTableViewCellDelegate>

@property (nonatomic, weak) UITableView *tableView;

@property (nonatomic, strong) NSMutableArray *dataArr; //模型数据集

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UITableView *tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 20, SCREENWIDTH, SCREENHEIGHT - 20)];
    [self.view addSubview:tableView];
    self.tableView = tableView;
    
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    
    //设置UITableView信息
    self.tableView.rowHeight = 60.f; //设置行高
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone; //隐藏自带的分割线
    
    self.dataArr = [NSMutableArray arrayWithArray:[self getMemberData]];
}

//模型数据
- (NSArray *)getMemberData{
    MemberModel *member1 = [MemberModel memberWithID:1 displayname:@"徐子陵😄😄" email:@"ziling@sina.com" phone:@"13751205120"];
    MemberModel *member2 = [MemberModel memberWithID:2 displayname:@"寇仲⭐️⭐️⭐️" email:@"kouzhong@qq.com" phone:@"18851205120"];
    MemberModel *member3 = [MemberModel memberWithID:3 displayname:@"跋锋寒😢😢" email:@"fenghan@163.com" phone:@"15851205120"];
    MemberModel *member4 = [MemberModel memberWithID:4 displayname:@"侯希白⌚️⌚️" email:@"xibai@sohu.com" phone:@"18651205120"];
    MemberModel *member5 = [MemberModel memberWithID:5 displayname:@"石之轩📱📱" email:@"zhixuan@yahoo.com" phone:@"18552405240"];
    MemberModel *member6 = [MemberModel memberWithID:6 displayname:@"杨虚彦💰💰" email:@"xuyan@hotmail.com" phone:@"13551885188"];
    
    
    NSArray *arr = [NSArray arrayWithObjects:member1, member2, member3, member4, member5, member6, nil];
    return arr;
}

#pragma mark - UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.dataArr.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    TanTableViewCell *cell = [TanTableViewCell cellWithTableView:tableView];
    cell.delegate = self;
    
    MemberModel *model = [self.dataArr objectAtIndex:indexPath.row];
    [cell setData:model];
    
    return cell;
}

#pragma mark - cell代理方法
- (void)deleteMember:(TanTableViewCell *)cell{
    NSIndexPath *path = [self.tableView indexPathForCell:cell]; //获取cell所在位置
    //删除数组中数据
    [self.dataArr removeObjectAtIndex:path.row];
    //删除单元格
    [self.tableView deleteRowsAtIndexPaths:@[path] withRowAnimation:UITableViewRowAnimationLeft];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

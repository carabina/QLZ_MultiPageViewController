//
//  MultiViewController.m
//  QLZ_MultiPageViewController
//
//  Created by 张庆龙 on 16/10/19.
//  Copyright © 2016年 张庆龙. All rights reserved.
//

#import "MultiViewController.h"

@interface MultiViewController ()

@end

@implementation MultiViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    multiTableView = [[UITableView alloc] initWithFrame:self.view.bounds];
    multiTableView.delegate = self;
    multiTableView.dataSource = self;
    [self.view addSubview:multiTableView];
}

#pragma mark UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 100;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *NameCell = @"NameCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:NameCell];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:NameCell];
    }
    cell.textLabel.text = [NSString stringWithFormat:@"%d - %d", self.index, (int)indexPath.row];
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end

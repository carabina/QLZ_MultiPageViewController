//
//  ViewController.m
//  QLZ_MultiPageViewController
//
//  Created by 张庆龙 on 16/10/19.
//  Copyright © 2016年 张庆龙. All rights reserved.
//

#import "ViewController.h"
#import "MultiViewController.h"
#import "QLZ_MultiPageViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSMutableArray *array = [NSMutableArray arrayWithCapacity:0];
    NSMutableArray *titleArray = [NSMutableArray arrayWithCapacity:0];
    for (int i = 0; i < 10; i++) {
        MultiViewController *viewController = [[MultiViewController alloc] init];
        viewController.index = i;
        [array addObject:viewController];
        if (i % 2 == 0) {
            [titleArray addObject:[NSString stringWithFormat:@"标题 - %d", i]];
        }
        else {
            [titleArray addObject:[NSString stringWithFormat:@"标题标题 - %d", i]];
        }
    }
    QLZ_MultiPageViewController *multiPageViewController = [[QLZ_MultiPageViewController alloc] init];
    multiPageViewController.segmentViewHeight = 80;
    multiPageViewController.highlightFontSize = 18.0f;
    multiPageViewController.normalFontSize = 10.0f;
    multiPageViewController.viewFrame = self.view.bounds;
    [multiPageViewController resetSegmentTitles:titleArray average:NO];
    [multiPageViewController resetViewControllers:array];
    [self addChildViewController:multiPageViewController];
    [self.view addSubview:multiPageViewController.view];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end

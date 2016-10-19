//
//  UIView+QLZ_Frame.h
//  QLZ_RefreshScrollView
//
//  Created by 张庆龙 on 16/8/2.
//  Copyright © 2016年 张庆龙. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (QLZ_Frame)

@property (nonatomic, assign) CGFloat x;
@property (nonatomic, assign) CGFloat y;
@property (nonatomic, assign) CGFloat width;
@property (nonatomic, assign) CGFloat height;
@property (nonatomic, assign) CGSize size;
@property (nonatomic, assign) CGPoint origin;
@property (nonatomic, assign) CGFloat centerX;
@property (nonatomic, assign) CGFloat centerY;
@property (nonatomic, assign, readonly) CGFloat midX;
@property (nonatomic, assign, readonly) CGFloat midY;
@property (nonatomic, assign, readonly) CGFloat maxX;
@property (nonatomic, assign, readonly) CGFloat maxY;

@end

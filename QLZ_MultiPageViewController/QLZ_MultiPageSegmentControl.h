//
//  QLZ_MultiPageSegmentControl.h
//  QLZ_MultiPageViewController
//
//  Created by 张庆龙 on 16/10/19.
//  Copyright © 2016年 张庆龙. All rights reserved.
//

#import <UIKit/UIKit.h>

@class QLZ_MultiPageSegmentControl;

@protocol QLZ_MultiPageSegmentControlDelegate <NSObject>

- (void)multiPageSegmentControl:(QLZ_MultiPageSegmentControl *)segmentControl didSelectAtIndex:(int)index;

@end

@interface QLZ_MultiPageSegmentControl : UIView <UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout> {
    UICollectionView *segmentCollectionView;
    UIView *movingView;
    NSMutableArray *itemsArray;
    NSMutableArray *itemWidthArray;
    UIView *sepView;
}
@property (nonatomic, weak) id<QLZ_MultiPageSegmentControlDelegate> delegate;
@property (nonatomic, assign) int selectIndex;
@property (nonatomic, assign) BOOL average;

@property (nonatomic, assign) UIColor *segmentBackgroundColor;
@property (nonatomic, strong) UIColor *highlightTextColor;
@property (nonatomic, strong) UIColor *normalTextColor;
@property (nonatomic, assign) float highlightFontSize;
@property (nonatomic, assign) float normalFontSize;
@property (nonatomic, strong) UIColor *movingViewColor;
@property (nonatomic, assign) float movingViewHeight;
@property (nonatomic, strong) UIColor *sepViewColor;
@property (nonatomic, assign) BOOL sepViewHidden;

- (id)initWithFrame:(CGRect)frame delegate:(id<QLZ_MultiPageSegmentControlDelegate>)delegate;
- (void)resetItems:(NSArray *)items average:(BOOL)average;
- (void)setCurrentIndex:(int)index radio:(float)radio;
- (void)reloadData;

@end

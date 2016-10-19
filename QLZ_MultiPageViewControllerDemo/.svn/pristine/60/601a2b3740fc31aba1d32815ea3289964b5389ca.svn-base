//
//  QLZ_MultiPageViewController.h
//  QLZ_MultiPageViewController
//
//  Created by 张庆龙 on 16/10/19.
//  Copyright © 2016年 张庆龙. All rights reserved.
//

#import <UIKit/UIKit.h>

@class QLZ_MultiPageViewController;

@protocol QLZ_MultiPageViewControllerDelegate <NSObject>

@optional
- (void)multiPageViewControllerWillBeginDragging:(QLZ_MultiPageViewController *)controller;
- (void)multiPageViewController:(QLZ_MultiPageViewController *)controller didSelectAtIndex:(int)index;

@end

@interface QLZ_MultiPageViewController : UIViewController <UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout> {
    UICollectionView *multiPageCollectionView;
    NSMutableArray *multiPageViewControllers;
}
@property (nonatomic, weak) id<QLZ_MultiPageViewControllerDelegate> delegate;
@property (nonatomic, assign) CGRect viewFrame;
@property (nonatomic, assign) int selectIndex;
@property (nonatomic, assign) BOOL disappearSegmentView;

@property (nonatomic, strong) UIColor *segmentBackgroundColor;
@property (nonatomic, assign) float segmentViewHeight;
@property (nonatomic, strong) UIColor *highlightTextColor;
@property (nonatomic, strong) UIColor *normalTextColor;
@property (nonatomic, assign) float highlightFontSize;
@property (nonatomic, assign) float normalFontSize;
@property (nonatomic, strong) UIColor *movingViewColor;
@property (nonatomic, assign) float movingViewHeight;
@property (nonatomic, strong) UIColor *sepViewColor;
@property (nonatomic, assign) BOOL sepViewHidden;

- (void)resetSegmentTitles:(NSArray *)titles average:(BOOL)average;
- (void)resetViewControllers:(NSArray *)array;
- (void)reloadData;

@end

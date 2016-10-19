//
//  QLZ_MultiPageViewController.m
//  QLZ_MultiPageViewController
//
//  Created by 张庆龙 on 16/10/19.
//  Copyright © 2016年 张庆龙. All rights reserved.
//

#import "QLZ_MultiPageViewController.h"
#import "QLZ_MultiPageSegmentControl.h"
#import "UIView+QLZ_Frame.h"
#import "UIScrollView+QLZ_Frame.h"

@interface QLZ_MultiPageViewController () <QLZ_MultiPageSegmentControlDelegate> {
    QLZ_MultiPageSegmentControl *multiPageSegmentControl;
}

@end

@implementation QLZ_MultiPageViewController

- (id)init {
    self = [super init];
    if (self) {
        multiPageViewControllers = [[NSMutableArray alloc] initWithCapacity:0];
        self.segmentViewHeight = 50;
        self.highlightFontSize = 16.0f;
        self.normalFontSize = 16.0f;
        self.highlightTextColor = [UIColor redColor];
        self.normalTextColor = [UIColor blackColor];
        self.movingViewColor = [UIColor redColor];
        self.movingViewHeight = 3;
        self.sepViewColor = [UIColor colorWithRed:0xee / 255.0f green:0xee / 255.0f blue:0xee / 255.0f alpha:1.0f];
        self.sepViewHidden = NO;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.viewFrame = self.view.frame;
    
    multiPageSegmentControl = [[QLZ_MultiPageSegmentControl alloc] initWithFrame:CGRectMake(0, 0, self.view.width, self.segmentViewHeight) delegate:self];
    multiPageSegmentControl.highlightTextColor = self.highlightTextColor;
    multiPageSegmentControl.normalTextColor = self.normalTextColor;
    multiPageSegmentControl.highlightFontSize = self.highlightFontSize;
    multiPageSegmentControl.normalFontSize = self.normalFontSize;
    multiPageSegmentControl.movingViewColor = self.movingViewColor;
    multiPageSegmentControl.movingViewHeight = self.movingViewHeight;
    multiPageSegmentControl.sepViewColor = self.sepViewColor;
    multiPageSegmentControl.sepViewHidden = self.sepViewHidden;
    [self.view addSubview:multiPageSegmentControl];
    multiPageSegmentControl.hidden = self.disappearSegmentView;
    
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    layout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    layout.minimumLineSpacing = 0;
    layout.minimumInteritemSpacing = 0;
    multiPageCollectionView = [[UICollectionView alloc] initWithFrame:CGRectMake(0, multiPageSegmentControl.height, self.view.width, self.view.height - multiPageSegmentControl.height) collectionViewLayout:layout];
    multiPageCollectionView.backgroundColor = [UIColor whiteColor];
    multiPageCollectionView.delegate = self;
    multiPageCollectionView.dataSource = self;
    multiPageCollectionView.pagingEnabled = YES;
    multiPageCollectionView.showsVerticalScrollIndicator = NO;
    multiPageCollectionView.showsHorizontalScrollIndicator = NO;
    [self.view addSubview:multiPageCollectionView];
}

- (void)setDisappearSegmentView:(BOOL)disappearSegmentView {
    _disappearSegmentView = disappearSegmentView;
    multiPageSegmentControl.hidden = disappearSegmentView;
}

- (void)setViewFrame:(CGRect)viewFrame {
    _viewFrame = viewFrame;
    self.view.frame = viewFrame;
    if (self.disappearSegmentView) {
        multiPageCollectionView.frame = CGRectMake(0, 0, self.view.width, self.view.height);
        return;
    }
    multiPageSegmentControl.frame = CGRectMake(0, 0, self.view.width, self.segmentViewHeight);
    multiPageCollectionView.frame = CGRectMake(0, multiPageSegmentControl.height, self.view.width, self.view.height - multiPageSegmentControl.height);
}

- (void)setSegmentViewHeight:(float)segmentViewHeight {
    _segmentViewHeight = segmentViewHeight;
    if (self.disappearSegmentView) {
        multiPageCollectionView.frame = CGRectMake(0, 0, self.view.width, self.view.height);
        return;
    }
    multiPageSegmentControl.height = segmentViewHeight;
    multiPageCollectionView.frame = CGRectMake(0, multiPageSegmentControl.height, self.view.width, self.view.height - multiPageSegmentControl.height);
    [self reloadData];
}

- (void)setSegmentBackgroundColor:(UIColor *)segmentBackgroundColor {
    _segmentBackgroundColor = segmentBackgroundColor;
    multiPageSegmentControl.segmentBackgroundColor = segmentBackgroundColor;
}

- (void)setHighlightTextColor:(UIColor *)highlightTextColor {
    _highlightTextColor = highlightTextColor;
    multiPageSegmentControl.highlightTextColor = highlightTextColor;
}

- (void)setNormalTextColor:(UIColor *)normalTextColor {
    _normalTextColor = normalTextColor;
    multiPageSegmentControl.normalTextColor = normalTextColor;
}

- (void)setHighlightFontSize:(float)highlightFontSize {
    _highlightFontSize = highlightFontSize;
    multiPageSegmentControl.highlightFontSize = highlightFontSize;
}

- (void)setNormalFontSize:(float)normalFontSize {
    _normalFontSize = normalFontSize;
    multiPageSegmentControl.normalFontSize = normalFontSize;
}

- (void)setMovingViewColor:(UIColor *)movingViewColor {
    _movingViewColor = movingViewColor;
    multiPageSegmentControl.movingViewColor = movingViewColor;
}

- (void)setMovingViewHeight:(float)movingViewHeight {
    _movingViewHeight = movingViewHeight;
    multiPageSegmentControl.movingViewHeight = movingViewHeight;
}

- (void)setSepViewColor:(UIColor *)sepViewColor {
    _sepViewColor = sepViewColor;
    multiPageSegmentControl.sepViewColor = sepViewColor;
}

- (void)setSepViewHidden:(BOOL)sepViewHidden {
    _sepViewHidden = sepViewHidden;
    multiPageSegmentControl.sepViewHidden = sepViewHidden;
}

- (void)resetSegmentTitles:(NSArray *)titles average:(BOOL)average {
    [multiPageSegmentControl resetItems:titles average:average];
}

- (void)resetViewControllers:(NSArray *)array {
    [multiPageViewControllers removeAllObjects];
    for (UIViewController *viewController in array) {
        [multiPageViewControllers addObject:viewController];
        [multiPageCollectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:NSStringFromClass([viewController class])];
        [self addChildViewController:viewController];
    }
    multiPageCollectionView.contentOffset = CGPointMake(0, 0);
    [multiPageCollectionView reloadData];
}

- (void)reloadData {
    [multiPageSegmentControl reloadData];
    [multiPageCollectionView reloadData];
}

#pragma mark QLZ_MultiPageSegmentControlDelegate
- (void)multiPageSegmentControl:(QLZ_MultiPageSegmentControl *)segmentControl didSelectAtIndex:(int)index {
    [multiPageCollectionView setContentOffset:CGPointMake(index * multiPageCollectionView.width, multiPageCollectionView.offsetY) animated:YES];
    self.selectIndex = index;
    if ([self.delegate respondsToSelector:@selector(multiPageViewController:didSelectAtIndex:)]) {
        [self.delegate multiPageViewController:self didSelectAtIndex:index];
    }
}

#pragma mark UICollectionViewDelegate
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView {
    if ([self.delegate respondsToSelector:@selector(multiPageViewControllerWillBeginDragging:)]) {
        [self.delegate multiPageViewControllerWillBeginDragging:self];
    }
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    int index = scrollView.offsetX / scrollView.width;
    float radio = (scrollView.offsetX - index * scrollView.width) / scrollView.width;
    [multiPageSegmentControl setCurrentIndex:index radio:radio];
}

- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView {
    int index = scrollView.offsetX / multiPageCollectionView.width;
    multiPageSegmentControl.selectIndex = index;
    if ([self.delegate respondsToSelector:@selector(multiPageViewController:didSelectAtIndex:)]) {
        [self.delegate multiPageViewController:self didSelectAtIndex:index];
    }
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return multiPageViewControllers.count;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    return multiPageCollectionView.bounds.size;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UIViewController *viewController = multiPageViewControllers[indexPath.item];
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:NSStringFromClass([viewController class]) forIndexPath:indexPath];
    viewController.view.frame = cell.bounds;
    for (UIView *view in cell.subviews) {
        [view removeFromSuperview];
    }
    [cell addSubview:viewController.view];
    return cell;
}

@end

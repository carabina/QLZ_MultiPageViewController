//
//  QLZ_MultiPageSegmentControl.m
//  QLZ_MultiPageViewController
//
//  Created by 张庆龙 on 16/10/19.
//  Copyright © 2016年 张庆龙. All rights reserved.
//

#import "QLZ_MultiPageSegmentControl.h"
#import "QLZ_MultiPageSegmentControlCell.h"
#import "UIScrollView+QLZ_Frame.h"
#import "UIView+QLZ_Frame.h"

@implementation QLZ_MultiPageSegmentControl

- (id)initWithFrame:(CGRect)frame delegate:(id<QLZ_MultiPageSegmentControlDelegate>)delegate {
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor whiteColor];
        self.delegate = delegate;
        
        itemsArray = [[NSMutableArray alloc] initWithCapacity:0];
        itemWidthArray = [[NSMutableArray alloc] initWithCapacity:0];
        
        UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
        layout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
        layout.minimumLineSpacing = 0;
        layout.minimumInteritemSpacing = 0;
        segmentCollectionView = [[UICollectionView alloc] initWithFrame:self.bounds collectionViewLayout:layout];
        segmentCollectionView.backgroundColor = [UIColor clearColor];
        segmentCollectionView.delegate = self;
        segmentCollectionView.dataSource = self;
        segmentCollectionView.showsVerticalScrollIndicator = NO;
        segmentCollectionView.showsHorizontalScrollIndicator = NO;
        [self addSubview:segmentCollectionView];
        [segmentCollectionView registerClass:[QLZ_MultiPageSegmentControlCell class] forCellWithReuseIdentifier:@"QLZ_MultiPageSegmentControlCell"];
        
        movingView = [[UIView alloc] initWithFrame:CGRectMake(0, self.height - self.movingViewHeight, 0, self.movingViewHeight)];
        movingView.backgroundColor = self.movingViewColor;
        [segmentCollectionView addSubview:movingView];
        
        sepView = [[UIView alloc] initWithFrame:CGRectMake(0, self.height - 1, self.width, 1)];
        sepView.backgroundColor = self.sepViewColor;
        sepView.hidden = self.sepViewHidden;
        [self addSubview:sepView];
    }
    return self;
}

- (void)setFrame:(CGRect)frame {
    [super setFrame:frame];
    segmentCollectionView.frame = self.bounds;
    movingView.height = self.movingViewHeight;
    movingView.y = self.height - self.movingViewHeight;
    sepView.y = self.height - sepView.height;
}

- (void)setSelectIndex:(int)selectIndex {
    if (_selectIndex == selectIndex || itemsArray.count == 0) {
        return;
    }
    _selectIndex = selectIndex;
    [self scrollToMiddleWithIndex:selectIndex];
    for (QLZ_MultiPageSegmentControlCell *cell in segmentCollectionView.visibleCells) {
        [cell setHightlight:NO highlightFontSize:self.highlightFontSize normalFontSize:self.normalFontSize highlightTextColor:self.highlightTextColor normalTextColor:self.normalTextColor];
    }
    QLZ_MultiPageSegmentControlCell *currentCell = (QLZ_MultiPageSegmentControlCell *)[segmentCollectionView cellForItemAtIndexPath:[NSIndexPath indexPathForItem:self.selectIndex inSection:0]];
    [currentCell setHightlight:YES highlightFontSize:self.highlightFontSize normalFontSize:self.normalFontSize highlightTextColor:self.highlightTextColor normalTextColor:self.normalTextColor];
    if ([self.delegate respondsToSelector:@selector(multiPageSegmentControl:didSelectAtIndex:)]) {
        [self.delegate multiPageSegmentControl:self didSelectAtIndex:selectIndex];
    }
}

- (void)setSegmentBackgroundColor:(UIColor *)segmentBackgroundColor {
    _segmentBackgroundColor = segmentBackgroundColor;
    self.backgroundColor = segmentBackgroundColor;
}

- (void)setMovingViewColor:(UIColor *)movingViewColor {
    _movingViewColor = movingViewColor;
    movingView.backgroundColor = movingViewColor;
}

- (void)setMovingViewHeight:(float)movingViewHeight {
    _movingViewHeight = movingViewHeight;
    movingView.y = self.height - movingViewHeight;
    movingView.height = movingViewHeight;
}

- (void)setSepViewColor:(UIColor *)sepViewColor {
    _sepViewColor = sepViewColor;
    sepView.backgroundColor = sepViewColor;
}

- (void)setSepViewHidden:(BOOL)sepViewHidden {
    _sepViewHidden = sepViewHidden;
    sepView.hidden = sepViewHidden;
}

- (void)resetItems:(NSArray *)items average:(BOOL)average {
    self.average = average;
    [itemsArray removeAllObjects];
    [itemsArray addObjectsFromArray:items];
    [itemWidthArray removeAllObjects];
    float totalWidth = 0;
    for (int i = 0; i < itemsArray.count; i++) {
        CGSize size;
        if (average) {
            segmentCollectionView.contentInset = UIEdgeInsetsZero;
            size = CGSizeMake((self.width - segmentCollectionView.contentInset.left - segmentCollectionView.contentInset.right) / itemsArray.count, self.height);
        }
        else {
            segmentCollectionView.contentInset = UIEdgeInsetsMake(0, 20, 0, 20);
            size = [self collectionView:segmentCollectionView layout:segmentCollectionView.collectionViewLayout sizeForItemAtIndexPath:[NSIndexPath indexPathForItem:i inSection:0]];
        }
        CGRect rect = CGRectMake(totalWidth, 0, size.width, size.height);
        totalWidth += size.width;
        [itemWidthArray addObject:[NSValue valueWithCGRect:rect]];
    }
    [segmentCollectionView reloadData];
    self.selectIndex = 0;
    [self setCurrentIndex:0 radio:0];
}

- (void)setCurrentIndex:(int)index radio:(float)radio {
    if (itemsArray.count == 0) {
        return;
    }
    if ((index == itemsArray.count - 1 && radio > 0) || (index == 0 && radio < 0)) {
        return;
    }
    NSValue *currentValue = itemWidthArray[index];
    NSValue *nextValue = itemWidthArray[(index == itemsArray.count - 1) ? index : index + 1];
    CGRect currentRect = currentValue.CGRectValue;
    CGRect nextRect = nextValue.CGRectValue;
    movingView.width = currentRect.size.width + (nextRect.size.width - currentRect.size.width) * radio;
    movingView.centerX = CGRectGetMidX(currentRect) + (CGRectGetMidX(nextRect) - CGRectGetMidX(currentRect)) * radio;

    if (self.highlightFontSize == self.normalFontSize) {
        return;
    }
    QLZ_MultiPageSegmentControlCell *currentCell = (QLZ_MultiPageSegmentControlCell *)[segmentCollectionView cellForItemAtIndexPath:[NSIndexPath indexPathForItem:index inSection:0]];
    QLZ_MultiPageSegmentControlCell *nextCell = (QLZ_MultiPageSegmentControlCell *)[segmentCollectionView cellForItemAtIndexPath:[NSIndexPath indexPathForItem:index + 1 inSection:0]];
    float currentFontNumber = self.highlightFontSize - (self.highlightFontSize - self.normalFontSize) * radio;
    currentCell.font = [UIFont systemFontOfSize:currentFontNumber];
    float nextFontNumber = self.normalFontSize + (self.highlightFontSize - self.normalFontSize) * radio;
    nextCell.font = [UIFont systemFontOfSize:nextFontNumber];
}

- (void)reloadData {
    [segmentCollectionView reloadData];
}

- (void)scrollToMiddleWithIndex:(int)index {
    [segmentCollectionView scrollToItemAtIndexPath:[NSIndexPath indexPathForItem:index inSection:0] atScrollPosition:UICollectionViewScrollPositionCenteredHorizontally animated:YES];
}

#pragma mark UICollectionViewDelegate
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return itemsArray.count;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    if (self.average) {
        return CGSizeMake((self.width - segmentCollectionView.contentInset.left - segmentCollectionView.contentInset.right) / itemsArray.count, self.height);
    }
    else {
        NSString *title = itemsArray[indexPath.row];
        CGFloat width = [QLZ_MultiPageSegmentControlCell widthWithTitle:title hightlightFontSize:self.highlightFontSize];
        return CGSizeMake(width, self.height);
    }
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    QLZ_MultiPageSegmentControlCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"QLZ_MultiPageSegmentControlCell" forIndexPath:indexPath];
    NSString *title = itemsArray[indexPath.row];
    [cell setTitle:title hightlightFontSize:self.highlightFontSize];
    [cell setHightlight:(self.selectIndex == indexPath.item) highlightFontSize:self.highlightFontSize normalFontSize:self.normalFontSize highlightTextColor:self.highlightTextColor normalTextColor:self.normalTextColor];
    return cell;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    [collectionView deselectItemAtIndexPath:indexPath animated:YES];
    self.selectIndex = (int)indexPath.item;
}

@end

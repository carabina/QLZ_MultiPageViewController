//
//  QLZ_MultiPageSegmentControlCell.h
//  QLZ_MultiPageViewController
//
//  Created by 张庆龙 on 16/10/19.
//  Copyright © 2016年 张庆龙. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QLZ_MultiPageSegmentControlCell : UICollectionViewCell {
    UILabel *titleLabel;
}
@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) UIFont *font;
@property (nonatomic, assign) BOOL hightlight;

- (void)setTitle:(NSString *)title hightlightFontSize:(float)fontSize;
- (void)setHightlight:(BOOL)hightlight highlightFontSize:(float)highlightFontSize normalFontSize:(float)normalFontSize highlightTextColor:(UIColor *)highlightTextColor normalTextColor:(UIColor *)normalTextColor;
+ (CGFloat)widthWithTitle:(NSString *)title hightlightFontSize:(float)fontSize;

@end

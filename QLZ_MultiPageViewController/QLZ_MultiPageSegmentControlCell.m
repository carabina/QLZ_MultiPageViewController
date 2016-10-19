//
//  QLZ_MultiPageSegmentControlCell.m
//  QLZ_MultiPageViewController
//
//  Created by 张庆龙 on 16/10/19.
//  Copyright © 2016年 张庆龙. All rights reserved.
//

#import "QLZ_MultiPageSegmentControlCell.h"
#import "NSString+QLZ_Size.h"
#import "UIView+QLZ_Frame.h"

@implementation QLZ_MultiPageSegmentControlCell

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
        
        titleLabel = [[UILabel alloc] initWithFrame:self.bounds];
        titleLabel.backgroundColor = [UIColor clearColor];
        titleLabel.textAlignment = NSTextAlignmentCenter;
        [self.contentView addSubview:titleLabel];
    }
    return self;
}

- (void)setTitle:(NSString *)title hightlightFontSize:(float)fontSize {
    self.title = title;
    titleLabel.text = title;
    titleLabel.size = [title sizeWithFont:[UIFont systemFontOfSize:fontSize]];
    titleLabel.center = CGPointMake(self.width / 2, self.height / 2);
}

- (void)setHightlight:(BOOL)hightlight highlightFontSize:(float)highlightFontSize normalFontSize:(float)normalFontSize highlightTextColor:(UIColor *)highlightTextColor normalTextColor:(UIColor *)normalTextColor {
    _hightlight = hightlight;
    titleLabel.highlighted = hightlight;
    if (hightlight) {
        titleLabel.textColor = highlightTextColor;
        titleLabel.font = [UIFont systemFontOfSize:highlightFontSize];
    }
    else {
        titleLabel.textColor = normalTextColor;
        titleLabel.font = [UIFont systemFontOfSize:normalFontSize];
    }
}

- (void)setFont:(UIFont *)font {
    titleLabel.font = font;
}

+ (CGFloat)widthWithTitle:(NSString *)title hightlightFontSize:(float)fontSize {
    CGSize titleSize = [title sizeWithFont:[UIFont systemFontOfSize:fontSize]];
    return titleSize.width + 20;
}

@end

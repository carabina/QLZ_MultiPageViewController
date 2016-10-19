//
//  NSString+QLZ_Size.m
//  QLZ_RadomString
//
//  Created by 张庆龙 on 16/8/5.
//  Copyright © 2016年 张庆龙. All rights reserved.
//

#import "NSString+QLZ_Size.h"

@implementation NSString (QLZ_Size)

- (CGFloat)heightWithFont:(UIFont *)font constrainedToWidth:(CGFloat)width {
    return [self sizeWithFont:font constrainedToSize:CGSizeMake(width, CGFLOAT_MAX)].height;
}

- (CGFloat)widthWithFont:(UIFont *)font constrainedToHeight:(CGFloat)height {
    return [self sizeWithFont:font constrainedToSize:CGSizeMake(CGFLOAT_MAX, height)].width;
}

- (CGSize)sizeWithFont:(UIFont *)font {
    return [self sizeWithFont:font constrainedToSize:CGSizeMake(CGFLOAT_MAX, CGFLOAT_MAX)];
}

- (CGSize)sizeWithFont:(UIFont *)font constrainedToWidth:(CGFloat)width {
    return [self sizeWithFont:font constrainedToSize:CGSizeMake(width, CGFLOAT_MAX)];
}

- (CGSize)sizeWithFont:(UIFont *)font constrainedToHeight:(CGFloat)height {
    return [self sizeWithFont:font constrainedToSize:CGSizeMake(CGFLOAT_MAX, height)];
}

- (CGSize)sizeWithFont:(UIFont *)font constrainedToSize:(CGSize)size {
    UIFont *textFont = font ? font : [UIFont systemFontOfSize:[UIFont systemFontSize]];
    CGSize textSize;
#if __IPHONE_OS_VERSION_MIN_REQUIRED < 70000
    if ([self respondsToSelector:@selector(boundingRectWithSize:options:attributes:context:)]) {
        NSMutableParagraphStyle *paragraph = [[NSMutableParagraphStyle alloc] init];
        paragraph.lineBreakMode = NSLineBreakByWordWrapping;
        NSDictionary *attributes = @{NSFontAttributeName : textFont, NSParagraphStyleAttributeName : paragraph};
        textSize = [self boundingRectWithSize:size options:(NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingTruncatesLastVisibleLine) attributes:attributes context:nil].size;
    }
    else {
        textSize = [self sizeWithFont:textFont constrainedToSize:size lineBreakMode:NSLineBreakByWordWrapping];
    }
#else
    NSMutableParagraphStyle *paragraph = [[NSMutableParagraphStyle alloc] init];
    paragraph.lineBreakMode = NSLineBreakByWordWrapping;
    NSDictionary *attributes = @{NSFontAttributeName : textFont, NSParagraphStyleAttributeName : paragraph};
    textSize = [self boundingRectWithSize:size options:(NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingTruncatesLastVisibleLine) attributes:attributes context:nil].size;
#endif
    return CGSizeMake(ceil(textSize.width), ceil(textSize.height));
}

@end

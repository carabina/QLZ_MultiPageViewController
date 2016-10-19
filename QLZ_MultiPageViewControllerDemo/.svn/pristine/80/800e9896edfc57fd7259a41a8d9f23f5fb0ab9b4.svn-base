//
//  UIView+QLZ_Dotted.m
//  QLZ_DottedView
//
//  Created by 张庆龙 on 16/8/5.
//  Copyright © 2016年 张庆龙. All rights reserved.
//

#import "UIView+QLZ_Dotted.h"
#import "NSString+QLZ_Radom.h"
#import <QuartzCore/QuartzCore.h>
#import <objc/runtime.h>

@interface UIView ()

@property (nonatomic, strong) NSMutableDictionary *shapeLayerDictionary;

@end

@implementation UIView (QLZ_Dotted)

- (void)removeShapeLayerWithKey:(NSString *)key {
    CAShapeLayer *shapeLayer = self.shapeLayerDictionary[key];
    if (shapeLayer) {
        [shapeLayer removeFromSuperlayer];
        [self.shapeLayerDictionary removeObjectForKey:key];
    }
}

#pragma mark InstanceMethods
- (NSString *)drawDottedLineWithStartPoint:(CGPoint)startPoint endPoint:(CGPoint)endPoint {
    return [self drawDottedLineWithStartPoint:startPoint endPoint:endPoint backgroundColor:self.layerBackgroundColor lineColor:self.lineColor lineWidth:self.lineWidth lineLength:self.lineLength spaceLength:self.spaceLength];
}

- (NSString *)drawDottedLineWithStartPoint:(CGPoint)startPoint endPoint:(CGPoint)endPoint backgroundColor:(UIColor *)backgroundColor lineColor:(UIColor *)lineColor lineWidth:(CGFloat)lineWidth lineLength:(CGFloat)lineLength spaceLength:(CGFloat)spaceLength {
    CAShapeLayer *shapeLayer = [UIView drawDottedLineWithStartPoint:startPoint endPoint:endPoint backgroundColor:backgroundColor lineColor:lineColor lineWidth:lineWidth lineLength:lineLength spaceLength:spaceLength];
    [self.layer addSublayer:shapeLayer];
    NSString *key = [NSString radom32BitString];
    self.shapeLayerDictionary[key] = shapeLayer;
    return key;
}

- (NSString *)drawDottedRectWithRect:(CGRect)rect cornerRadius:(CGFloat)cornerRadius {
    return [self drawDottedRectWithRect:rect cornerRadius:cornerRadius backgroundColor:self.layerBackgroundColor lineColor:self.lineColor lineWidth:self.lineWidth lineLength:self.lineLength spaceLength:self.spaceLength];
}

- (NSString *)drawDottedRectWithRect:(CGRect)rect cornerRadius:(CGFloat)cornerRadius backgroundColor:(UIColor *)backgroundColor lineColor:(UIColor *)lineColor lineWidth:(CGFloat)lineWidth lineLength:(CGFloat)lineLength spaceLength:(CGFloat)spaceLength {
    CAShapeLayer *shapeLayer = [self.class drawDottedRectWithRect:rect cornerRadius:cornerRadius backgroundColor:backgroundColor lineColor:lineColor lineWidth:lineWidth lineLength:lineLength spaceLength:spaceLength];
    [self.layer addSublayer:shapeLayer];
    NSString *key = [NSString radom32BitString];
    self.shapeLayerDictionary[key] = shapeLayer;
    return key;
}

- (NSString *)drawDottedRectWithRect:(CGRect)rect byRoundingCorners:(UIRectCorner)corners cornerRadii:(CGSize)cornerRadii {
    return [self drawDottedRectWithRect:rect byRoundingCorners:corners cornerRadii:cornerRadii backgroundColor:self.layerBackgroundColor lineColor:self.lineColor lineWidth:self.lineWidth lineLength:self.lineLength spaceLength:self.spaceLength];
}

- (NSString *)drawDottedRectWithRect:(CGRect)rect byRoundingCorners:(UIRectCorner)corners cornerRadii:(CGSize)cornerRadii backgroundColor:(UIColor *)backgroundColor lineColor:(UIColor *)lineColor lineWidth:(CGFloat)lineWidth lineLength:(CGFloat)lineLength spaceLength:(CGFloat)spaceLength {
    CAShapeLayer *shapeLayer = [self.class drawDottedRectWithRect:rect byRoundingCorners:corners cornerRadii:cornerRadii backgroundColor:backgroundColor lineColor:lineColor lineWidth:lineWidth lineLength:lineLength spaceLength:spaceLength];
    [self.layer addSublayer:shapeLayer];
    NSString *key = [NSString radom32BitString];
    self.shapeLayerDictionary[key] = shapeLayer;
    return key;
}

- (NSString *)drawDottedOvalWithRect:(CGRect)rect {
    return [self drawDottedOvalWithRect:rect backgroundColor:self.layerBackgroundColor lineColor:self.lineColor lineWidth:self.lineWidth lineLength:self.lineLength spaceLength:self.spaceLength];
}

- (NSString *)drawDottedOvalWithRect:(CGRect)rect backgroundColor:backgroundColor lineColor:(UIColor *)lineColor lineWidth:(CGFloat)lineWidth lineLength:(CGFloat)lineLength spaceLength:(CGFloat)spaceLength {
    CAShapeLayer *shapeLayer = [self.class drawDottedOvalWithRect:rect backgroundColor:backgroundColor lineColor:lineColor lineWidth:lineWidth lineLength:lineLength spaceLength:spaceLength];
    [self.layer addSublayer:shapeLayer];
    NSString *key = [NSString radom32BitString];
    self.shapeLayerDictionary[key] = shapeLayer;
    return key;
}

- (NSString *)drawDottedCircleWithArcCenter:(CGPoint)center radius:(CGFloat)radius startAngle:(CGFloat)startAngle endAngle:(CGFloat)endAngle clockwise:(BOOL)clockwise {
    return [self drawDottedCircleWithArcCenter:center radius:radius startAngle:startAngle endAngle:endAngle clockwise:clockwise backgroundColor:self.layerBackgroundColor lineColor:self.lineColor lineWidth:self.lineWidth lineLength:self.lineLength spaceLength:self.spaceLength];
}

- (NSString *)drawDottedCircleWithArcCenter:(CGPoint)center radius:(CGFloat)radius startAngle:(CGFloat)startAngle endAngle:(CGFloat)endAngle clockwise:(BOOL)clockwise backgroundColor:(UIColor *)backgroundColor lineColor:(UIColor *)lineColor lineWidth:(CGFloat)lineWidth lineLength:(CGFloat)lineLength spaceLength:(CGFloat)spaceLength {
    CAShapeLayer *shapeLayer = [self.class drawDottedCircleWithArcCenter:center radius:radius startAngle:startAngle endAngle:endAngle clockwise:clockwise backgroundColor:backgroundColor lineColor:lineColor lineWidth:lineWidth lineLength:lineLength spaceLength:spaceLength];
    [self.layer addSublayer:shapeLayer];
    NSString *key = [NSString radom32BitString];
    self.shapeLayerDictionary[key] = shapeLayer;
    return key;
}

- (NSString *)drawDottedWithFrame:(CGRect)frame path:(CGPathRef)path {
    return [self drawDottedWithFrame:frame path:path backgroundColor:self.layerBackgroundColor lineColor:self.lineColor lineWidth:self.lineWidth lineLength:self.lineLength spaceLength:self.spaceLength];
}

- (NSString *)drawDottedWithFrame:(CGRect)frame path:(CGPathRef)path backgroundColor:(UIColor *)backgroundColor lineColor:(UIColor *)lineColor lineWidth:(CGFloat)lineWidth lineLength:(CGFloat)lineLength spaceLength:(CGFloat)spaceLength {
    CAShapeLayer *shapeLayer = [self.class drawDottedWithFrame:frame path:path backgroundColor:backgroundColor lineColor:lineColor lineWidth:lineWidth lineLength:lineLength spaceLength:spaceLength];
    [self.layer addSublayer:shapeLayer];
    NSString *key = [NSString radom32BitString];
    self.shapeLayerDictionary[key] = shapeLayer;
    return key;
}

#pragma mark ClassMethods
+ (CAShapeLayer *)drawDottedLineWithStartPoint:(CGPoint)startPoint endPoint:(CGPoint)endPoint backgroundColor:(UIColor *)backgroundColor lineColor:(UIColor *)lineColor lineWidth:(CGFloat)lineWidth lineLength:(CGFloat)lineLength spaceLength:(CGFloat)spaceLength {
    CGRect frame = CGRectMake(MIN(startPoint.x, endPoint.x), MIN(startPoint.y, endPoint.y), fabs(startPoint.x - endPoint.x), fabs(startPoint.y - endPoint.y));
    CAShapeLayer *shapeLayer = [self.class createShapeLayerWithFrame:frame backgroundColor:backgroundColor lineColor:lineColor lineWidth:lineWidth lineLength:lineLength spaceLength:spaceLength];
    
    UIBezierPath *bezierPath = [UIBezierPath bezierPath];
    [bezierPath moveToPoint:startPoint];
    [bezierPath addLineToPoint:endPoint];
    shapeLayer.path = bezierPath.CGPath;
    
    return shapeLayer;
}

+ (CAShapeLayer *)drawDottedRectWithRect:(CGRect)rect cornerRadius:(CGFloat)cornerRadius backgroundColor:(UIColor *)backgroundColor lineColor:(UIColor *)lineColor lineWidth:(CGFloat)lineWidth lineLength:(CGFloat)lineLength spaceLength:(CGFloat)spaceLength {
    CAShapeLayer *shapeLayer = [self.class createShapeLayerWithFrame:rect backgroundColor:backgroundColor lineColor:lineColor lineWidth:lineWidth lineLength:lineLength spaceLength:spaceLength];
    
    UIBezierPath *bezierPath = [UIBezierPath bezierPathWithRoundedRect:rect cornerRadius:cornerRadius];
    shapeLayer.path = bezierPath.CGPath;
    
    return shapeLayer;
}

+ (CAShapeLayer *)drawDottedRectWithRect:(CGRect)rect byRoundingCorners:(UIRectCorner)corners cornerRadii:(CGSize)cornerRadii backgroundColor:(UIColor *)backgroundColor lineColor:(UIColor *)lineColor lineWidth:(CGFloat)lineWidth lineLength:(CGFloat)lineLength spaceLength:(CGFloat)spaceLength {
    CAShapeLayer *shapeLayer = [self.class createShapeLayerWithFrame:rect backgroundColor:backgroundColor lineColor:lineColor lineWidth:lineWidth lineLength:lineLength spaceLength:spaceLength];
    
    UIBezierPath *bezierPath = [UIBezierPath bezierPathWithRoundedRect:rect byRoundingCorners:corners cornerRadii:cornerRadii];
    shapeLayer.path = bezierPath.CGPath;
    
    return shapeLayer;
}

+ (CAShapeLayer *)drawDottedOvalWithRect:(CGRect)rect backgroundColor:(UIColor *)backgroundColor lineColor:(UIColor *)lineColor lineWidth:(CGFloat)lineWidth lineLength:(CGFloat)lineLength spaceLength:(CGFloat)spaceLength {
    CAShapeLayer *shapeLayer = [self.class createShapeLayerWithFrame:rect backgroundColor:backgroundColor lineColor:lineColor lineWidth:lineWidth lineLength:lineLength spaceLength:spaceLength];
    
    UIBezierPath *bezierPath = [UIBezierPath bezierPathWithOvalInRect:rect];
    shapeLayer.path = bezierPath.CGPath;
    
    return shapeLayer;
}

+ (CAShapeLayer *)drawDottedCircleWithArcCenter:(CGPoint)center radius:(CGFloat)radius startAngle:(CGFloat)startAngle endAngle:(CGFloat)endAngle clockwise:(BOOL)clockwise backgroundColor:(UIColor *)backgroundColor lineColor:(UIColor *)lineColor lineWidth:(CGFloat)lineWidth lineLength:(CGFloat)lineLength spaceLength:(CGFloat)spaceLength {
    CGRect frame = CGRectMake(center.x - radius, center.y - radius, radius * 2, radius * 2);
    CAShapeLayer *shapeLayer = [self.class createShapeLayerWithFrame:frame backgroundColor:backgroundColor lineColor:lineColor lineWidth:lineWidth lineLength:lineLength spaceLength:spaceLength];
    
    UIBezierPath *bezierPath = [UIBezierPath bezierPathWithArcCenter:center radius:radius startAngle:startAngle endAngle:endAngle clockwise:clockwise];
    shapeLayer.path = bezierPath.CGPath;
    
    return shapeLayer;
}

+ (CAShapeLayer *)drawDottedWithFrame:(CGRect)frame path:(CGPathRef)path backgroundColor:(UIColor *)backgroundColor lineColor:(UIColor *)lineColor lineWidth:(CGFloat)lineWidth lineLength:(CGFloat)lineLength spaceLength:(CGFloat)spaceLength {
    CAShapeLayer *shapeLayer = [self.class createShapeLayerWithFrame:frame backgroundColor:backgroundColor lineColor:lineColor lineWidth:lineWidth lineLength:lineLength spaceLength:spaceLength];
    
    UIBezierPath *bezierPath = [UIBezierPath bezierPathWithCGPath:path];
    shapeLayer.path = bezierPath.CGPath;
    
    return shapeLayer;
}

+ (CAShapeLayer *)createShapeLayerWithFrame:(CGRect)frame backgroundColor:(UIColor *)backgroundColor lineColor:(UIColor *)lineColor lineWidth:(CGFloat)lineWidth lineLength:(CGFloat)lineLength spaceLength:(CGFloat)spaceLength {
    CAShapeLayer *shapeLayer = [CAShapeLayer layer];
    shapeLayer.bounds = frame;
    shapeLayer.position = CGPointMake(CGRectGetMidX(frame), CGRectGetMidY(frame));
    shapeLayer.fillColor = backgroundColor.CGColor;
    shapeLayer.strokeColor = lineColor.CGColor;
    shapeLayer.lineWidth = lineWidth;
    shapeLayer.lineJoin = kCALineJoinRound;
    shapeLayer.lineDashPattern = @[@(lineLength), @(spaceLength)];
    return shapeLayer;
}

#pragma mark SetGetMethods
- (void)setShapeLayerDictionary:(NSMutableDictionary *)shapeLayerDictionary {
    objc_setAssociatedObject(self, @"QLZ_DottedView_ShapeLayerDictionary", shapeLayerDictionary, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (NSMutableDictionary *)shapeLayerDictionary {
    NSMutableDictionary *dictionary = objc_getAssociatedObject(self, @"QLZ_DottedView_ShapeLayerDictionary");
    if (!dictionary) {
        dictionary = [[NSMutableDictionary alloc] initWithCapacity:0];
        self.shapeLayerDictionary = dictionary;
    }
    return dictionary;
}

- (void)setLineColor:(UIColor *)lineColor {
    objc_setAssociatedObject(self, @"QLZ_DottedView_LineColor", lineColor, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (UIColor *)lineColor {
    UIColor *color = objc_getAssociatedObject(self, @"QLZ_DottedView_LineColor");
    if (!color) {
        color = [UIColor blackColor];
        self.lineColor = color;
    }
    return color;
}

- (void)setLayerBackgroundColor:(UIColor *)layerBackgroundColor {
    objc_setAssociatedObject(self, @"QLZ_DottedView_LayerBackgroundColor", layerBackgroundColor, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (UIColor *)layerBackgroundColor {
    UIColor *color = objc_getAssociatedObject(self, @"QLZ_DottedView_LayerBackgroundColor");
    if (!color) {
        color = [UIColor clearColor];
        self.layerBackgroundColor = color;
    }
    return color;
}

- (void)setLineWidth:(CGFloat)lineWidth {
    objc_setAssociatedObject(self, @"QLZ_DottedView_LineWidth", @(lineWidth), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (CGFloat)lineWidth {
    NSNumber *number = objc_getAssociatedObject(self, @"QLZ_DottedView_LineWidth");
    if (!number) {
        number = [NSNumber numberWithFloat:1.0f];
        self.lineWidth = number.floatValue;
    }
    return number.floatValue;
}

- (void)setLineLength:(CGFloat)lineLength {
    objc_setAssociatedObject(self, @"QLZ_DottedView_LineLength", @(lineLength), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (CGFloat)lineLength {
    NSNumber *number = objc_getAssociatedObject(self, @"QLZ_DottedView_LineLength");
    if (!number) {
        number = [NSNumber numberWithFloat:3.0f];
        self.lineLength = number.floatValue;
    }
    return number.floatValue;
}

- (void)setSpaceLength:(CGFloat)spaceLength {
    objc_setAssociatedObject(self, @"QLZ_DottedView_SpaceLength", @(spaceLength), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (CGFloat)spaceLength {
    NSNumber *number = objc_getAssociatedObject(self, @"QLZ_DottedView_SpaceLength");
    if (!number) {
        number = [NSNumber numberWithFloat:3.0f];
        self.spaceLength = number.floatValue;
    }
    return number.floatValue;
}

@end

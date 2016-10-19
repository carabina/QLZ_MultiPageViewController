//
//  UIView+QLZ_Dotted.h
//  QLZ_DottedView
//
//  Created by 张庆龙 on 16/8/5.
//  Copyright © 2016年 张庆龙. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (QLZ_Dotted)

@property (nonatomic, strong) UIColor *lineColor; //Default to black
@property (nonatomic, strong) UIColor *layerBackgroundColor; //Default to clear
@property (nonatomic, assign) CGFloat lineWidth; //Default to 1.0
@property (nonatomic, assign) CGFloat lineLength; //Default to 3.0
@property (nonatomic, assign) CGFloat spaceLength; //Default to 3.0

//通过key移除一个Layer
- (void)removeShapeLayerWithKey:(NSString *)key;

#pragma mark InstanceMethods
//使用虚线属性值来创建虚线
- (NSString *)drawDottedLineWithStartPoint:(CGPoint)startPoint endPoint:(CGPoint)endPoint;
//使用当前值来创建虚线，不会修改虚线属性值
- (NSString *)drawDottedLineWithStartPoint:(CGPoint)startPoint endPoint:(CGPoint)endPoint backgroundColor:(UIColor *)backgroundColor lineColor:(UIColor *)lineColor lineWidth:(CGFloat)lineWidth lineLength:(CGFloat)lineLength spaceLength:(CGFloat)spaceLength;

//使用虚线属性值来创建虚线圆角矩形
- (NSString *)drawDottedRectWithRect:(CGRect)rect cornerRadius:(CGFloat)cornerRadius;
//使用当前值来创建虚线圆角矩形，不会修改虚线属性值
- (NSString *)drawDottedRectWithRect:(CGRect)rect cornerRadius:(CGFloat)cornerRadius backgroundColor:(UIColor *)backgroundColor lineColor:(UIColor *)lineColor lineWidth:(CGFloat)lineWidth lineLength:(CGFloat)lineLength spaceLength:(CGFloat)spaceLength;

//使用虚线属性值来创建虚线特定角圆角矩形
- (NSString *)drawDottedRectWithRect:(CGRect)rect byRoundingCorners:(UIRectCorner)corners cornerRadii:(CGSize)cornerRadii;
//使用当前值来创建虚线特定角圆角矩形，不会修改虚线属性值
- (NSString *)drawDottedRectWithRect:(CGRect)rect byRoundingCorners:(UIRectCorner)corners cornerRadii:(CGSize)cornerRadii backgroundColor:(UIColor *)backgroundColor lineColor:(UIColor *)lineColor lineWidth:(CGFloat)lineWidth lineLength:(CGFloat)lineLength spaceLength:(CGFloat)spaceLength;

//使用虚线属性值来创建虚线椭圆
- (NSString *)drawDottedOvalWithRect:(CGRect)rect;
//使用当前值来创建虚线椭圆，不会修改虚线属性值
- (NSString *)drawDottedOvalWithRect:(CGRect)rect backgroundColor:(UIColor *)backgroundColor lineColor:(UIColor *)lineColor lineWidth:(CGFloat)lineWidth lineLength:(CGFloat)lineLength spaceLength:(CGFloat)spaceLength;

//使用虚线属性来创建虚线扇形
- (NSString *)drawDottedCircleWithArcCenter:(CGPoint)center radius:(CGFloat)radius startAngle:(CGFloat)startAngle endAngle:(CGFloat)endAngle clockwise:(BOOL)clockwise;
//使用当前值来创建虚线扇形，不会修改虚线属性值
- (NSString *)drawDottedCircleWithArcCenter:(CGPoint)center radius:(CGFloat)radius startAngle:(CGFloat)startAngle endAngle:(CGFloat)endAngle clockwise:(BOOL)clockwise backgroundColor:(UIColor *)backgroundColor lineColor:(UIColor *)lineColor lineWidth:(CGFloat)lineWidth lineLength:(CGFloat)lineLength spaceLength:(CGFloat)spaceLength;

//使用虚线属性来创建虚线特定图形
- (NSString *)drawDottedWithFrame:(CGRect)frame path:(CGPathRef)path;
//使用当前值来创建虚线特定图形，不会修改虚线属性值
- (NSString *)drawDottedWithFrame:(CGRect)frame path:(CGPathRef)path backgroundColor:(UIColor *)backgroundColor lineColor:(UIColor *)lineColor lineWidth:(CGFloat)lineWidth lineLength:(CGFloat)lineLength spaceLength:(CGFloat)spaceLength;

#pragma mark ClassMethods
//返回一个虚线的Layer
+ (CAShapeLayer *)drawDottedLineWithStartPoint:(CGPoint)startPoint endPoint:(CGPoint)endPoint backgroundColor:(UIColor *)backgroundColor lineColor:(UIColor *)lineColor lineWidth:(CGFloat)lineWidth lineLength:(CGFloat)lineLength spaceLength:(CGFloat)spaceLength;
//返回一个虚线圆角矩形的layer
+ (CAShapeLayer *)drawDottedRectWithRect:(CGRect)rect cornerRadius:(CGFloat)cornerRadius backgroundColor:(UIColor *)backgroundColor lineColor:(UIColor *)lineColor lineWidth:(CGFloat)lineWidth lineLength:(CGFloat)lineLength spaceLength:(CGFloat)spaceLength;
//返回一个虚线特定角圆角矩形的layer
+ (CAShapeLayer *)drawDottedRectWithRect:(CGRect)rect byRoundingCorners:(UIRectCorner)corners cornerRadii:(CGSize)cornerRadii backgroundColor:(UIColor *)backgroundColor lineColor:(UIColor *)lineColor lineWidth:(CGFloat)lineWidth lineLength:(CGFloat)lineLength spaceLength:(CGFloat)spaceLength;
//返回一个虚线椭圆的layer
+ (CAShapeLayer *)drawDottedOvalWithRect:(CGRect)rect backgroundColor:(UIColor *)backgroundColor lineColor:(UIColor *)lineColor lineWidth:(CGFloat)lineWidth lineLength:(CGFloat)lineLength spaceLength:(CGFloat)spaceLength;
//返回一个虚线扇形的layer
+ (CAShapeLayer *)drawDottedCircleWithArcCenter:(CGPoint)center radius:(CGFloat)radius startAngle:(CGFloat)startAngle endAngle:(CGFloat)endAngle clockwise:(BOOL)clockwise backgroundColor:(UIColor *)backgroundColor lineColor:(UIColor *)lineColor lineWidth:(CGFloat)lineWidth lineLength:(CGFloat)lineLength spaceLength:(CGFloat)spaceLength;
//返回一个特定路径的layer
+ (CAShapeLayer *)drawDottedWithFrame:(CGRect)frame path:(CGPathRef)path backgroundColor:(UIColor *)backgroundColor lineColor:(UIColor *)lineColor lineWidth:(CGFloat)lineWidth lineLength:(CGFloat)lineLength spaceLength:(CGFloat)spaceLength;

@end

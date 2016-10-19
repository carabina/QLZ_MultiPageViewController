//
//  NSDictionary+QLZ_JSON.h
//  QLZ_JSON
//
//  Created by 张庆龙 on 16/9/27.
//  Copyright © 2016年 qihoo. All rights reserved.
//

#import "NSObject+QLZ_JSON.h"

@interface NSDictionary (QLZ_JSON)

- (id)objectValueForKey:(NSString *)key;
- (BOOL)boolValueForKey:(NSString *)key;
- (BOOL)boolValueForKey:(NSString *)key defaultValue:(BOOL)defaultValue;
- (NSInteger)integerValueForKey:(NSString *)key;
- (NSInteger)integerValueForKey:(NSString *)key defaultValue:(NSInteger)defaultValue;
- (int)intValueForKey:(NSString *)key;
- (int)intValueForKey:(NSString *)key defaultValue:(int)defaultValue;
- (long long)longLongValueForKey:(NSString *)key;
- (long long)longLongValueForKey:(NSString *)key defaultValue:(long long)defaultValue;
- (double)doubleValueForKey:(NSString *)key;
- (double)doubleValueForKey:(NSString *)key defaultValue:(double)defaultValue;
- (time_t)timeValueForKey:(NSString *)key;
- (time_t)timeValueForKey:(NSString *)key defaultValue:(time_t)defaultValue;
- (NSString *)stringValueForKey:(NSString *)key;
- (NSString *)stringValueForKey:(NSString *)key defaultValue:(NSString *)defaultValue;
- (NSDictionary *)dictionaryValueForKey:(NSString *)key;
- (NSArray *)arrayValueForKey:(NSString *)key;

@end

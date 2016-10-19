//
//  NSDictionary+QLZ_JSON.m
//  QLZ_JSON
//
//  Created by 张庆龙 on 16/9/27.
//  Copyright © 2016年 qihoo. All rights reserved.
//

#import "NSDictionary+QLZ_JSON.h"

@implementation NSDictionary (QLZ_JSON)

- (id)objectValueForKey:(NSString *)key {
    if ([self isKindOfClass:[NSDictionary class]]) {
        return self[key];
    }
    return nil;
}

- (BOOL)boolValueForKey:(NSString *)key {
    return [self boolValueForKey:key defaultValue:NO];
}

- (BOOL)boolValueForKey:(NSString *)key defaultValue:(BOOL)defaultValue {
    id value = [self objectValueForKey:key];
    return value == [NSNull null] ? defaultValue : [value boolValue];
}

- (NSInteger)integerValueForKey:(NSString *)key {
    return [self integerValueForKey:key defaultValue:0];
}

- (NSInteger)integerValueForKey:(NSString *)key defaultValue:(NSInteger)defaultValue {
    id value = [self objectValueForKey:key];
    return value == [NSNull null] ? defaultValue : [value integerValue];
}

- (int)intValueForKey:(NSString *)key {
    return [self intValueForKey:key defaultValue:0];
}

- (int)intValueForKey:(NSString *)key defaultValue:(int)defaultValue {
    id value = [self objectValueForKey:key];
    return value == [NSNull null] ? defaultValue : [value intValue];
}

- (long long)longLongValueForKey:(NSString *)key {
    return [self longLongValueForKey:key defaultValue:0];
}

- (long long)longLongValueForKey:(NSString *)key defaultValue:(long long)defaultValue {
    id value = [self objectValueForKey:key];
    return value == [NSNull null] ? defaultValue : [value longLongValue];
}

- (double)doubleValueForKey:(NSString *)key {
    return [self doubleValueForKey:key defaultValue:0];
}

- (double)doubleValueForKey:(NSString *)key defaultValue:(double)defaultValue {
    id value = [self objectValueForKey:key];
    return value == [NSNull null] ? defaultValue : [value doubleValue];
}

- (time_t)timeValueForKey:(NSString *)key {
    return [self timeValueForKey:key defaultValue:0];
}

- (time_t)timeValueForKey:(NSString *)key defaultValue:(time_t)defaultValue {
    id value = [self objectValueForKey:key];
    if ([value isKindOfClass:[NSNumber class]]) {
        NSNumber *number = (NSNumber *)value;
        CFNumberType numberType = CFNumberGetType((CFNumberRef)number);
        NSTimeInterval t;
        if (numberType == kCFNumberLongLongType) {
            t = number.longLongValue / 1000;
        }
        else {
            t = number.longValue;
        }
        return t;
    }
    else if ([value isKindOfClass:[NSString class]]) {
        NSString *string = (NSString *)value;
        if (string.length == 13) {
            long long longlongTime = string.longLongValue;
            NSTimeInterval time = longlongTime / 1000;
            return time;
        }
        else if (string.length == 10) {
            long long longlongTime = string.longLongValue;
            NSTimeInterval time = longlongTime;
            return time;
        }
        else {
            if (!string || (id)string == [NSNull null]) {
                string = @"";
            }
            struct tm created;
            time_t now;
            time(&now);
            if (string) {
                if (strptime(string.UTF8String, "%a %b %d %H:%M:%S %z %Y", &created) == NULL) {
                    strptime(string.UTF8String, "%a, %d %b %Y %H:%M:%S %z", &created);
                }
                return mktime(&created);
            }
        }
    }
    return defaultValue;
}


- (NSString *)stringValueForKey:(NSString *)key {
    return [self stringValueForKey:key defaultValue:nil];
}

- (NSString *)stringValueForKey:(NSString *)key defaultValue:(NSString *)defaultValue {
    id value = [self objectValueForKey:key];
    if (!value || value == [NSNull null]) {
        return defaultValue;
    }
    if ([value isKindOfClass:[NSNumber class]]) {
        return [value stringValue];
    }
    else if (![value isKindOfClass:[NSString class]]) {
        NSString *valueString = [value JSONString];
        return (valueString.length > 0) ? valueString : defaultValue;
    }
    return value;
}

- (NSDictionary *)dictionaryValueForKey:(NSString *)key {
    id value = [self objectValueForKey:key];
    if (value && [value isKindOfClass:[NSDictionary class]]) {
        return (NSDictionary *)value;
    }
    return [value JSONValue];
}

- (NSArray *)arrayValueForKey:(NSString *)key {
    id value = [self objectValueForKey:key];
    if (value && [value isKindOfClass:[NSArray class]]) {
        return (NSArray *)value;
    }
    return [value JSONValue];
}

@end

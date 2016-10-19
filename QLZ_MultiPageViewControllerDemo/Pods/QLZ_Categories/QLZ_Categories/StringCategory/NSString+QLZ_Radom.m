//
//  NSString+QLZ_Radom.m
//  QLZ_RadomString
//
//  Created by 张庆龙 on 16/8/5.
//  Copyright © 2016年 张庆龙. All rights reserved.
//

#import "NSString+QLZ_Radom.h"

@implementation NSString (QLZ_Radom)

+ (NSString *)radom8BitString {
    return [self.class radomStringWithLength:8];
}

+ (NSString *)radom16BitString {
    return [self.class radomStringWithLength:16];
}

+ (NSString *)radom32BitString {
    return [self.class radomStringWithLength:32];
}

+ (NSString *)radom64BitString {
    return [self.class radomStringWithLength:64];
}

+ (NSString *)radomStringWithLength:(int)length {
    char data[length];
    for (int x = 0; x < length; data[x++] = (char)('A' + (arc4random_uniform(26))));
    return [[NSString alloc] initWithBytes:data length:length encoding:NSUTF8StringEncoding];
}

@end

//
//  NSString+QLZ_MD5.m
//  QLZ_RadomString
//
//  Created by 张庆龙 on 16/8/5.
//  Copyright © 2016年 张庆龙. All rights reserved.
//

#import "NSString+QLZ_MD5.h"
#import <CommonCrypto/CommonDigest.h>

@implementation NSString (QLZ_MD5)

- (NSString *)md5With32Bit {
    const char *cStr = self.UTF8String;
    unsigned char result[16];
    NSNumber *number = @(strlen(cStr));
    CC_MD5(cStr, number.intValue, result);
    
    return [NSString stringWithFormat:
            @"%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X",
            result[0], result[1], result[2], result[3],
            result[4], result[5], result[6], result[7],
            result[8], result[9], result[10], result[11],
            result[12], result[13], result[14], result[15]
            ];
}

- (NSString *)md5With32BitLowercase {
    return [self md5With32Bit].lowercaseString;
}

- (NSString *)md5With32BitUppercase {
    return [self md5With32Bit].uppercaseString;
}

@end

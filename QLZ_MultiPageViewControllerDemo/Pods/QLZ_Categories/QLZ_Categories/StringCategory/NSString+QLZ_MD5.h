//
//  NSString+QLZ_MD5.h
//  QLZ_RadomString
//
//  Created by 张庆龙 on 16/8/5.
//  Copyright © 2016年 张庆龙. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (QLZ_MD5)

- (NSString *)md5With32Bit;
- (NSString *)md5With32BitLowercase;
- (NSString *)md5With32BitUppercase;

@end

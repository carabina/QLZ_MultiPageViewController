//
//  NSString+QLZ_Radom.h
//  QLZ_RadomString
//
//  Created by 张庆龙 on 16/8/5.
//  Copyright © 2016年 张庆龙. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (QLZ_Radom)

+ (NSString *)radom8BitString;
+ (NSString *)radom16BitString;
+ (NSString *)radom32BitString;
+ (NSString *)radom64BitString;
+ (NSString *)radomStringWithLength:(int)length;

@end

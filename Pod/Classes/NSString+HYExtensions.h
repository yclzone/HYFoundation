//
//  NSString+HYExtensions.h
//  Pods
//
//  Created by YCLZONE on 2/19/16.
//
//

#import <Foundation/Foundation.h>

@interface NSString (HYExtensions)

/**
 *  去除首尾(两端)的空白字符和换行
 *
 *  @return 新字符串
 */
- (NSString *)hy_stringByTrimmingWhitespaceAndNewline;

/**
 *  去除所有空白字符和换行
 *
 *  @return 新字符串
 */
- (NSString *)hy_stringByRemovingWhitespaceAndNewline;
@end





@interface NSString (HYVersion)

/**
 *  APP主版本号
 *
 *  @return APP主版本号
 */
+ (NSString *)hy_version;

/**
 *  APP Build号
 *
 *  @return APP Build号
 */
+ (NSString *)hy_build;
@end
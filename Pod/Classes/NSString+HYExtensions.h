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

/**
 *  JSON字符串样式
 */
typedef NS_ENUM(NSInteger, HYJSONType) {
    /**
     *  压缩过的字符串
     */
    HYJSONTypePlant = 0,
    /**
     *  格式化的字符串
     */
    HYJSONTypeFormated = NSJSONWritingPrettyPrinted
};

@interface NSString (HYJSON)

/**
 *  NSString, NSNumber, NSArray, NSDictionary, or NSNull转JSON
 *
 *  @param object 待转换的对象
 *  @param opt    选项
 *
 *  @return JSON字符串
 */
+ (NSString *)hy_stringWithObject:(id)object type:(HYJSONType)opt;

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
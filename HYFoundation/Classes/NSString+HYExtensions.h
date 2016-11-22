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

- (BOOL)hy_isValidPhoneNumber;
- (BOOL)hy_isValidEmail;


/**
 判断字符串是否只包含字符、数字、下划线

 @param min 最小长度
 @param max 最大长度
 @return 是否包含
 */
- (BOOL)hy_isValidNameWithMin:(NSInteger)min max:(NSInteger)max;

/**
 *  是否只包含字母 数字 汉字
 *
 *  @return 是否只包含字母 数字 汉字
 */
- (BOOL)hy_isValidText;
@end

#pragma mark - 版本号
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

#pragma mark - MD5
typedef NS_ENUM(NSInteger, MD5Type) {
    MD5Type32BitLowercase = 0,
    MD5Type32BitUppercase = 1,
    MD5Type16BitLowercase = 2,
    MD5Type16BitUppercase = 3,
};

@interface NSString (HYMD5)
- (NSString *)hy_md5;
- (NSString *)hy_md5WithType:(MD5Type)type;
@end

@interface NSString (HYJSON)
- (id)hy_JSONObject;
@end

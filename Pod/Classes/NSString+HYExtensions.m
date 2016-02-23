//
//  NSString+HYExtensions.m
//  Pods
//
//  Created by YCLZONE on 2/19/16.
//
//

#import "NSString+HYExtensions.h"
#import <CommonCrypto/CommonDigest.h>

@implementation NSString (HYExtensions)

- (NSString *)hy_stringByTrimmingWhitespaceAndNewline {
    NSString *temp = [self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
    temp = [temp stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    return temp;
}

- (NSString *)hy_stringByRemovingWhitespaceAndNewline {
    NSString *temp = [self stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp = [temp stringByReplacingOccurrencesOfString:@"\r" withString:@""];
    temp = [temp stringByReplacingOccurrencesOfString:@"\n" withString:@""];
    return temp;
}
@end



@implementation NSString (HYVersion)

+ (NSString *)hy_version {
    return [[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleShortVersionString"];
}

+ (NSString *)hy_build {
    return [[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleVersion"];
}

@end

@implementation NSString (HYMD5)

- (NSString *)hy_md5 {
    return [self hy_md5WithType:MD5Type32BitLowercase];
}

- (NSString *)hy_md5WithType:(MD5Type)type {
    
    const char *original_str = [self UTF8String];
    unsigned char result[CC_MD5_DIGEST_LENGTH];
    CC_MD5(original_str, (CC_LONG)strlen(original_str), result);
    NSMutableString *hash = [NSMutableString string];
    for (int i = 0; i < CC_MD5_DIGEST_LENGTH; i++)
        [hash appendFormat:@"%02X", result[i]];
    
    NSString *MD5Strubg = @"";
    
    switch (type) {
        case MD5Type16BitLowercase:
            MD5Strubg = [[hash lowercaseString] substringWithRange:NSMakeRange(8, 16)];
            break;
        case MD5Type16BitUppercase:
            MD5Strubg = [[hash uppercaseString] substringWithRange:NSMakeRange(8, 16)];
            break;
        case MD5Type32BitLowercase:
            MD5Strubg = [hash lowercaseString];
            break;
        case MD5Type32BitUppercase:
            MD5Strubg = [hash uppercaseString];
            break;
    }
    return MD5Strubg;
}

@end
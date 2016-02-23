//
//  NSString+HYExtensions.m
//  Pods
//
//  Created by YCLZONE on 2/19/16.
//
//

#import "NSString+HYExtensions.h"

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
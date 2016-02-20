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


@implementation NSString (HYJSON)

+ (NSString *)hy_stringWithObject:(id)object type:(HYJSONType)opt {
    NSError *error;
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:object
                                                       options:(NSJSONWritingOptions)opt
                                                         error:&error];
    if (jsonData != nil && error == nil){
        return [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
    }else{
        // 解析错误
        return nil;
    }
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
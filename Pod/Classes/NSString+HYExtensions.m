//
//  NSString+HYExtensions.m
//  Pods
//
//  Created by YCLZONE on 2/19/16.
//
//

#import "NSString+HYExtensions.h"

@implementation NSString (HYExtensions)

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
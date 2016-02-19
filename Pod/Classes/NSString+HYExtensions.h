//
//  NSString+HYExtensions.h
//  Pods
//
//  Created by YCLZONE on 2/19/16.
//
//

#import <Foundation/Foundation.h>

@interface NSString (HYExtensions)

@end


typedef NS_ENUM(NSInteger, HYJSONType) {
    HYJSONTypePlant = 0,
    HYJSONTypeFormated = NSJSONWritingPrettyPrinted
};

@interface NSString (HYJSON)
+ (NSString *)hy_stringWithObject:(id)object type:(HYJSONType)opt;
@end


@interface NSString (HYVersion)
+ (NSString *)hy_version;
+ (NSString *)hy_build;
@end
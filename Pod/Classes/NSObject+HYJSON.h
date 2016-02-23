//
//  NSObject+HYJSON.h
//  Pods
//
//  Created by YCLZONE on 2/23/16.
//
//

#import <Foundation/Foundation.h>

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

typedef void (^HYJSONHandler)(NSString *JSONString, NSError *error);

@interface NSObject (HYJSON)
- (NSString *)hy_JSONStringWithType:(HYJSONType)opt;
- (void)hy_JSONSerializationWithType:(HYJSONType)opt JSONHandler:(HYJSONHandler)handler;
@end

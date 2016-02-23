//
//  NSObject+HYJSON.m
//  Pods
//
//  Created by YCLZONE on 2/23/16.
//
//

#import "NSObject+HYJSON.h"

@implementation NSObject (HYJSON)

- (void)hy_JSONSerializationWithType:(HYJSONType)opt JSONHandler:(HYJSONHandler)handler {
    
    NSAssert([NSJSONSerialization isValidJSONObject:self], @"类型不匹配，无法转成JSON");
    
    NSError *JSONError = nil;
    NSData *JSONData = [NSJSONSerialization dataWithJSONObject:self
                                                       options:(NSJSONWritingOptions)opt
                                                         error:&JSONError];
    NSString *JSONString = nil;
    if (JSONData && !JSONError){
        JSONString = [[NSString alloc] initWithData:JSONData encoding:NSUTF8StringEncoding];
    }
    
    if (handler) {
        handler(JSONString, JSONError);
    }
}
@end

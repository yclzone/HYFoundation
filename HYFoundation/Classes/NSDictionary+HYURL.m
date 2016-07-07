//
//  NSDictionary+HYURL.m
//  Pods
//
//  Created by YCLZONE on 2/23/16.
//
//

#import "NSDictionary+HYURL.h"
#import "NSString+HYExtensions.h"

@implementation NSDictionary (HYURL)

- (NSString *)hy_queryString {
    NSArray *keys = [self allKeys];
    keys = [keys sortedArrayUsingComparator:^NSComparisonResult(id obj1, id obj2) {
        return [obj1 compare:obj2];
    }];
    NSString *queryString = @"";
    for (NSString *key in keys) {
        queryString = [queryString stringByAppendingFormat:@"&%@=%@", key, self[key]];
    }
    
    if (queryString.length > 1) {
        queryString = [queryString substringFromIndex:1];
    }
    
    return queryString;
}

@end

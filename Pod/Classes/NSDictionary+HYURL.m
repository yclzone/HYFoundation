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
    queryString = [queryString substringFromIndex:1];
    return queryString;
}

- (NSString *)signedStringWithMethod:(NSString *)method urlString:(NSString *)urlString sign:(NSString *)signString {
    
    NSArray *keys = [self allKeys];
    keys = [keys sortedArrayUsingComparator:^NSComparisonResult(id obj1, id obj2) {
        return [obj1 compare:obj2];
    }];
    NSString *body = @"";
    for (NSString *key in keys) {
        body = [body stringByAppendingFormat:@"&%@=%@", key, self[key]];
    }
    body = [body substringFromIndex:1];
    
    NSString *stringToSign = [NSString stringWithFormat:@"%@%@%@%@", method, urlString, body,signString];
    
    return [stringToSign hy_md5];
}
@end

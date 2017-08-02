//
//  NSDictionary+HYJSON.m
//  Pods
//
//  Created by gogovan on 02/08/2017.
//
//

#import "NSDictionary+HYJSON.h"

NS_ASSUME_NONNULL_BEGIN
@implementation NSDictionary (HYJSON)
- (NSString *)hy_stringValueForKey:(NSString *)key {
    id object = [self objectForKey:key];
    if ([object isKindOfClass:[NSString class]]) {
        return object;
    }
    else if([object isKindOfClass:[NSNumber class]]) {
        return [object stringValue];
    } else {
        return @"";
    }
}

- (NSDictionary *)hy_dictionaryValueForKey:(NSString *)key {
    id object = [self objectForKey:key];
    return [object isKindOfClass:[NSDictionary class]] ? object : @{};
}


- (NSArray *)hy_arrayValueForKey:(NSString *)key {
    id object = [self objectForKey:key];
    return [object isKindOfClass:[NSArray class]] ? object : @[];
    
}


- (BOOL)hy_boolValueForKey:(NSString *)key {
    id object = [self objectForKey:key];
    if ([object isKindOfClass:[NSString class]] ||
        [object isKindOfClass:[NSNumber class]]) {
        return [object boolValue];
    }
    return NO;
}

- (NSInteger)hy_integerValueForKey:(NSString *)key {
    id object = [self objectForKey:key];
    if ([object isKindOfClass:[NSString class]] ||
        [object isKindOfClass:[NSNumber class]]) {
        return [object integerValue];
    }
    return 0;
}

- (long long)hy_longLongValueForKey:(NSString *)key {
    id object = [self objectForKey:key];
    if ([object isKindOfClass:[NSString class]] ||
        [object isKindOfClass:[NSNumber class]]) {
        return [object longLongValue];
    }
    return 0;
}

- (unsigned long long)hy_unsignedLongLongValueForKey:(NSString *)key {
    id object = [self objectForKey:key];
    if ([object isKindOfClass:[NSString class]] ||
        [object isKindOfClass:[NSNumber class]])
    {
        return [object unsignedLongLongValue];
    }
    return 0;
}

- (double)hy_doubleValueForKey:(NSString *)key {
    id object = [self objectForKey:key];
    if ([object isKindOfClass:[NSString class]] ||
        [object isKindOfClass:[NSNumber class]]) {
        return [object doubleValue];
    }
    return .0;
}

@end
NS_ASSUME_NONNULL_END

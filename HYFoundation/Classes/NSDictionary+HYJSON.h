//
//  NSDictionary+HYJSON.h
//  Pods
//
//  Created by gogovan on 02/08/2017.
//
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@interface NSDictionary (HYJSON)
- (NSString *)hy_stringValueForKey:(NSString *)key;
- (NSDictionary *)hy_dictionaryValueForKey:(NSString *)key;
- (NSArray *)hy_arrayValueForKey:(NSString *)key;

- (BOOL)hy_boolValueForKey:(NSString *)key;
- (NSInteger)hy_integerValueForKey:(NSString *)key;
- (long long)hy_longLongValueForKey:(NSString *)key;
- (unsigned long long)hy_unsignedLongLongValueForKey:(NSString *)key;
- (double)hy_doubleValueForKey:(NSString *)key;
@end
NS_ASSUME_NONNULL_END

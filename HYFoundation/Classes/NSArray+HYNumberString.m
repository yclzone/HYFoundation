//
//  NSArray+HYNumberString.m
//  Pods
//
//  Created by YCLZONE on 2/19/16.
//
//

#import "NSArray+HYNumberString.h"

#ifndef NSStringFromInteger
#define NSStringFromInteger(value) [NSString stringWithFormat:@"%zd", value]
#endif

@implementation NSArray (HYNumberString)
+ (NSArray *)hy_arrayWithIntegerFrom:(NSInteger)from to:(NSInteger)to step:(NSInteger)step {
    if (!( (from < to && step > 0) || (from > to && step < 0) )) {
        return @[NSStringFromInteger(from), NSStringFromInteger(to)];
    }
    
    NSMutableArray *values = [NSMutableArray arrayWithCapacity:to-from];
    for (NSInteger index = from; index<=to; index+=step) {
        [values addObject:NSStringFromInteger(index)];
    }
    
    // 添加最后一个临界数值
    NSInteger lastValue = [values.lastObject integerValue];
    if (lastValue<to) {
        [values addObject:[NSString stringWithFormat:@"%zd", to]];
    }
    return [values copy];
}
@end

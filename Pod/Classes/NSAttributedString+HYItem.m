//
//  NSAttributedString+HYItem.m
//  Pods
//
//  Created by YCLZONE on 2/19/16.
//
//

#import "NSAttributedString+HYItem.h"

#import <UIKit/UIKit.h>

@implementation HYStringStyle
+ (instancetype)styleWithString:(NSString *)string font:(UIFont *)font color:(UIColor *)color {
    HYStringStyle *style = [HYStringStyle new];
    style.string = string;
    style.font = font;
    style.color = color;
    return style;
}
@end

@implementation NSAttributedString (HYItem)
+ (NSAttributedString *)hy_stringByAppendingFormat:(NSArray<HYStringStyle *> *)styles {
    NSMutableAttributedString *strM = [[NSMutableAttributedString alloc] init];
    for (HYStringStyle *style in styles) {
        
        NSDictionary *attributes = @{NSFontAttributeName : style.font,
                                     NSForegroundColorAttributeName : style.color};
        
        NSAttributedString *str = [[NSAttributedString alloc] initWithString:style.string
                                                                                attributes:attributes];
        
        [strM appendAttributedString:str];
    }
    return [strM copy];
}
@end

//
//  NSAttributedString+HYItem.h
//  Pods
//
//  Created by YCLZONE on 2/19/16.
//
//

#import <Foundation/Foundation.h>

@class UIColor, UIFont;

@interface HYStringStyle : NSObject
/** str */
@property (nonatomic, copy) NSString *string;
/** font */
@property (nonatomic, strong) UIFont *font;
/** color */
@property (nonatomic, strong) UIColor *color;

+ (instancetype)styleWithString:(NSString *)string font:(UIFont *)font color:(UIColor *)color;
@end

@interface NSAttributedString (HYItem)

+ (NSAttributedString *)hy_attributedStringWithFormats:(NSArray<HYStringStyle *> *)styles;
@end

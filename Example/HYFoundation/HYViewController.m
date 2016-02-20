//
//  HYViewController.m
//  HYFoundation
//
//  Created by yclzone on 02/19/2016.
//  Copyright (c) 2016 yclzone. All rights reserved.
//

#import "HYViewController.h"
#import "HYFoundation.h"

@interface HYViewController ()

@end

@implementation HYViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    
    NSDictionary *dict = @{@"action" : @"xxx",
                           @"userid" : @5};
    
    NSDictionary *dict2 = @{@"band" : @"Smartisan",
                            @"model" : @"T2"};
    
    NSArray *numbs = [NSArray hy_arrayWithIntegerFrom:1 to:9 step:-2];
    
    NSArray *array = @[dict, dict2, numbs];
    
    NSLog(@"%@", [NSString hy_stringWithObject:array type:HYJSONTypePlant]);
    
    NSLog(@"%@", [NSString hy_stringWithObject:[HYStringStyle hy_propertyKeys] type:HYJSONTypeFormated]);
    
    NSLog(@"version: %@.%@", [NSString hy_version], [NSString hy_build]);
    HYStringStyle *style1 = ({
        HYStringStyle  *style = [HYStringStyle styleWithString:@"www."
                                                          font:[UIFont systemFontOfSize:14]
                                                         color:[UIColor blueColor]];
        style;
    });
    HYStringStyle *style2 = ({
        HYStringStyle  *style = [HYStringStyle styleWithString:@"yclzone"
                                                          font:[UIFont boldSystemFontOfSize:18]
                                                         color:[UIColor redColor]];
        style;
    });
    HYStringStyle *style3 = ({
        HYStringStyle  *style = [HYStringStyle styleWithString:@".com"
                                                          font:[UIFont systemFontOfSize:14]
                                                         color:[UIColor orangeColor]];
        style;
    });
    
    NSAttributedString *attrbString = [NSAttributedString hy_stringByAppendingFormat:@[style1, style2, style3]];
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectZero];
    label.attributedText = attrbString;
    [label sizeToFit];
    
    label.center = self.view.center;
    label.backgroundColor = [UIColor groupTableViewBackgroundColor];
    
    [self.view addSubview:label];
    
    
    NSLog(@"%@", [@"     \n\raa adf adf adf adsfdsfs   asdf    \r\n" hy_stringByTrimmingWhitespaceAndNewline]);
    NSLog(@"xx");
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

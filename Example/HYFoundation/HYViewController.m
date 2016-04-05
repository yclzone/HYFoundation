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
    
    [array hy_JSONSerializationWithType:HYJSONTypePlant
                            JSONHandler:^(NSString *JSONString, NSError *error) {
                                NSLog(@"JSON: %@", JSONString);
                            }];
    
    NSString *JSONString = @"{\"love_num\":2,\"is_love\":0,\"is_fav\":0,\"page_size\":1,\"counts\":5,\"comment_array\":[{\"comment_id\":620,\"mem_userid\":355,\"mem_headpic\":\"http://bg-controller.hanyouapp.com/upload/201603/15/17-32-05_7436_100.jpg\",\"mem_name\":\"zjw7sky\",\"content\":\"Haiti\",\"create_time\":1458112776,\"reply_mem_name\":\"\"},{\"comment_id\":621,\"mem_userid\":355,\"mem_headpic\":\"http://bg-controller.hanyouapp.com/upload/201603/15/17-32-05_7436_100.jpg\",\"mem_name\":\"zjw7sky\",\"content\":\"Hhh\",\"create_time\":1458112786,\"reply_mem_name\":\"zjw7sky\"},{\"comment_id\":622,\"mem_userid\":355,\"mem_headpic\":\"http://bg-controller.hanyouapp.com/upload/201603/15/17-32-05_7436_100.jpg\",\"mem_name\":\"zjw7sky\",\"content\":\"Zai ahi yi ci\",\"create_time\":1458112819,\"reply_mem_name\":\"zjw7sky\"},{\"comment_id\":623,\"mem_userid\":356,\"mem_headpic\":\"http://bg-controller.hanyouapp.com/upload/201603/16/18-29-47_4131_100.jpg\",\"mem_name\":\"yclzone\",\"content\":\"wow 图哦哦哦哦\",\"create_time\":1458136353,\"reply_mem_name\":\"zjw7sky\"},{\"comment_id\":624,\"mem_userid\":324,\"mem_headpic\":\"http://bg-controller.hanyouapp.com/upload/201603/16/11-04-57_6156_100.jpg\",\"mem_name\":\"天天天\",\"content\":\"ggg\",\"create_time\":1458182639,\"reply_mem_name\":\"\"}],\"type\":true,\"msg\":\"获取成功\",\"errorCode\":20101}";
    
    NSDictionary *JSONObj = [JSONString hy_JSONObject];
    NSLog(@"JSON Object: %@", JSONObj);
    
    /** Version */
    NSLog(@"version: %@.%@", [NSString hy_version], [NSString hy_build]);
    
    /** NSAttributedString */
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
    
    NSAttributedString *attrbString = [NSAttributedString hy_attributedStringWithFormats:@[style1, style2, style3]];
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectZero];
    label.attributedText = attrbString;
    [label sizeToFit];
    
    label.center = self.view.center;
    label.backgroundColor = [UIColor groupTableViewBackgroundColor];
    
    [self.view addSubview:label];
    
    
    NSLog(@"%@", [@"     \n\raa adf adf adf adsfdsfs   asdf    \r\n" hy_stringByTrimmingWhitespaceAndNewline]);
    NSLog(@"xx");
    
    NSString *email = @"yclzone@xxx.com";
    BOOL isEmail = [email hy_isValidEmail];
    
    NSLog(@"dd");
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

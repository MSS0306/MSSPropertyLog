//
//  ViewController.m
//  JDYPropertyLog
//
//  Created by 于威 on 15/11/6.
//  Copyright © 2015年 于威. All rights reserved.
//

#import "ViewController.h"
#import "MSSPropertyLog.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSString *path1 = [[NSBundle mainBundle]pathForResource:@"test00" ofType:@"json"];
    NSData *data1 = [[NSData alloc]initWithContentsOfFile:path1];
    NSDictionary *dict1 = [NSJSONSerialization JSONObjectWithData:data1 options:0 error:nil];
    
    
    kPropertyLog(dict1)
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

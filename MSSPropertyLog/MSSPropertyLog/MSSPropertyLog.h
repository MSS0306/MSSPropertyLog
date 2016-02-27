//
//  MSSPropertyLog.h
//  MSSPropertyLog
//
//  Created by 于威 on 15/11/6.
//  Copyright © 2015年 于威. All rights reserved.
//

#import <Foundation/Foundation.h>

#define kPropertyLog(varName) \
MSSPropertyLog *tempPropertyLog = [[MSSPropertyLog alloc]init]; \
[tempPropertyLog logPropertyWithObj:varName]; \
[tempPropertyLog logResultString];

@interface MSSPropertyLog : NSObject

- (void)logPropertyWithObj:(id)obj;
- (void)logResultString;

@end

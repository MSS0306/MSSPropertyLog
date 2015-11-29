//
//  JDYPropertyLog.m
//  JDYPropertyLog
//
//  Created by 于威 on 15/11/6.
//  Copyright © 2015年 于威. All rights reserved.
//

#import "JDYPropertyLog.h"

#define kClassTitle @"JDY"

@interface JDYPropertyLogModel : NSObject
@property (nonatomic,copy)NSString *key;
@property (nonatomic,assign)id obj;
@end

@implementation JDYPropertyLogModel

@end

@interface JDYPropertyLog ()
@property (nonatomic,copy)NSMutableString *resultString;
@end

@implementation JDYPropertyLog

- (instancetype)init
{
    self = [super init];
    if(self)
    {
        _resultString = [[NSMutableString alloc]init];
        [_resultString appendString:@"\n"];
    }
    return self;
}

- (void)logPropertyWithObj:(id)obj
{
    if([obj isKindOfClass:[NSDictionary class]])
    {
        [self logPropertyWithDict:obj className:kClassTitle@"RootModel"];
    }
    else if([obj isKindOfClass:[NSArray class]])
    {
        [self logPropertyWithArray:obj className:kClassTitle@"RootModel"];
    }
}

- (void)logPropertyWithArray:(NSArray *)array className:(NSString *)className
{
    for (id obj in array)
    {
        if([obj isKindOfClass:[NSDictionary class]])
        {
            [self logPropertyWithDict:obj className:className];
        }
        else if([obj isKindOfClass:[NSArray class]])
        {
            [self logPropertyWithArray:obj className:className];
        }
        break;
    }
}

- (void)logPropertyWithDict:(NSDictionary *)dict className:(NSString *)className;
{
    [_resultString appendString:@"\n"];
    [_resultString appendFormat:@"@interface %@ : NSObject\n",className];
    NSMutableArray *dictArray = [[NSMutableArray alloc]init];
    NSMutableArray *array = [[NSMutableArray alloc]init];
    [dict enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
        NSString *type = nil;
        NSString *propertyType = nil;
        if([obj isKindOfClass:[NSString class]] || [obj isKindOfClass:[NSNull class]])
        {
            type = @"NSString";
            propertyType = @"copy";
        }
        else if([obj isKindOfClass:[NSNumber class]])
        {
            type = @"NSNumber";
            propertyType = @"assign";
        }
        else if([obj isKindOfClass:[NSArray class]] || [obj isKindOfClass:[NSDictionary class]])
        {
            JDYPropertyLogModel *propertyLogModel = [[JDYPropertyLogModel alloc]init];
            propertyLogModel.key = key;
            propertyLogModel.obj = obj;
            propertyType = @"strong";
            if([obj isKindOfClass:[NSDictionary class]])
            {
                type = [NSString stringWithFormat:@"%@",[self getModelNameWithKey:key]];
                [dictArray addObject:propertyLogModel];
            }
            else if([obj isKindOfClass:[NSArray class]])
            {
                type = @"NSArray";
                [array addObject:propertyLogModel];
            }
        }
        [_resultString appendFormat:@"@property (nonatomic,%@)%@ *%@\n",propertyType,type,key];
    }];
    [_resultString appendString:@"@end\n"];
    for (JDYPropertyLogModel *propertyLogModel in dictArray)
    {
        [self logPropertyWithDict:propertyLogModel.obj className:[self getModelNameWithKey:propertyLogModel.key]];
    }
    for (JDYPropertyLogModel *propertyLogModel in array)
    {
        [self logPropertyWithArray:propertyLogModel.obj className:[self getModelNameWithKey:propertyLogModel.key]];
    }
}

- (NSString *)getModelNameWithKey:(NSString *)key
{
    return [NSString stringWithFormat:@"%@%@Model",kClassTitle,key.capitalizedString];
}

- (void)logResultString
{
    NSLog(@"%@",_resultString);
}


@end

//
//  TaQiNetWorkConfig.m
//  TaQiFrameworkDemo
//
//  Created by TaQi on 16/6/13.
//  Copyright © 2016年 TaQi. All rights reserved.
//

#import "TaQiNetWorkConfig.h"

/**
 *  初始化接口访问地址
 */
static NSMutableDictionary *InterfacePathDic;

static NSString *ServerPath;

@implementation TaQiNetWorkConfig

/**
 *  初始化服务器地址
 */
+ (void)initServerPath:(NSString *)serverPath{
    ServerPath = serverPath;
}

/**
 *  初始化接口访问地址 通过本地字典文件地址 （plist文件名称）
 */
+ (void)initInterfacePathWithFileName:(NSString *)fileName{
    InterfacePathDic = [NSMutableDictionary dictionary];
    //创建主束
    NSBundle *bundle=[NSBundle mainBundle];
    //读取plist文件路径
    NSString *path=[bundle pathForResource:fileName ofType:@"plist"];
    //读取数据到 NsDictionary字典中
    NSDictionary *dictionary=[[NSDictionary alloc]initWithContentsOfFile:path];
    NSLog(@"size is %d",[dictionary count]);
    //NSLog(@"data is %@",dictionary);
    NSArray *array=[dictionary allKeys];
    for(id key in dictionary)
    {
        NSLog(@"key: %d,value: %@",key,[dictionary objectForKey:key]);
    }
    [TaQiNetWorkConfig initInterfacePathWithDictionary:dictionary];
}

/**
 *  初始化接口访问地址 通过本地字典
 */
+ (void)initInterfacePathWithDictionary:(NSDictionary *)dic{
    InterfacePathDic = [[NSMutableDictionary alloc]initWithDictionary:dic];
}

/**
 *  获取接口地址
 */
+ (NSString *)getInterfacePath:(NSString *)key{
    return [InterfacePathDic objectForKey:key];
}

/**
 *  获取接口请求地址
 */
+ (NSString *)getUrl:(NSString *)interfaceName{
    return [NSString stringWithFormat:@"%@%@",ServerPath,[TaQiNetWorkConfig getInterfacePath:interfaceName]];
}

@end

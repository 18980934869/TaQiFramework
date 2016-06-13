//
//  TaQiNetWorkConfig.h
//  TaQiFrameworkDemo
//
//  Created by TaQi on 16/6/13.
//  Copyright © 2016年 TaQi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TaQiNetWorkConfig : NSObject

/**
 *  初始化服务器地址
 */
+ (void)initServerPath:(NSString *)serverPath;

/**
 *  初始化接口访问地址 通过本地字典文件地址
 */
+ (void)initInterfacePathWithFileName:(NSString *)fileName;

/**
 *  初始化接口访问地址 通过本地字典
 */
+ (void)initInterfacePathWithDictionary:(NSDictionary *)dic;

/**
 *  获取访问地址
 */
+ (NSString *) getUrl:(NSString *)interfaceName;

@end

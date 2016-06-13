//
//  TaQiResponseMessage.h
//  TaQiFrameworkDemo
//
//  Created by TaQi on 16/6/13.
//  Copyright © 2016年 TaQi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TaQiResponseMessage : NSObject

/**
 *  返回标识(1:正常,2:服务器警告3:服务器致命异常)
 */
@property (nonatomic, copy) NSString *Code;

/**
 *  返回结果
 */
@property (nonatomic, strong) NSArray *Data;

/**
 *  错误消息
 */
@property (nonatomic, copy) NSString *Message;

@end

//
//  TaQiRequest.h
//  TaQiFrameworkDemo
//
//  Created by TaQi on 16/6/13.
//  Copyright © 2016年 TaQi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TaQiResponseMessage.h"
#import "AFNetworking.h"
#import "TaQiNetWorkConfig.h"

@class TaQiRequest;
@protocol TaQiRequestDelegate <NSObject>

/**
 *  请求成功委托
 *
 *  @param request         请求
 *  @param responseMessage 响应消息
 */
- (void)didRequestSucceed:(TaQiRequest *)request responseMessage:(TaQiResponseMessage *)responseMessage;

/**
 *  请求失败委托
 *
 *  @param request    请求
 *  @param failReason 失败原因
 */
- (void)didRequestFailed:(TaQiRequest *)request failReason:(NSString *)failReason;

@end

@interface TaQiRequest : NSObject

// 委托
@property (nonatomic, weak) id<TaQiRequestDelegate> delegate;

// 是否存在
@property (nonatomic, assign) BOOL isExecuting;

/**
 *  停止请求
 */
- (void)cancel;

/**
 *  执行请求
 *
 *  @param funcName   方法名
 *  @param parameters 参数
 *  @param modelType  返回结果类型
 */
- (void)executeWithInterfaceKey:(NSString *)interfaceKey parameters:(NSDictionary *)parameters resultModelType:(Class)modelType;



@end

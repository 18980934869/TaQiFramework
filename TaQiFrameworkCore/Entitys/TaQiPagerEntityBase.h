//
//  TaQiPagerEntityBase.h
//  TaQiFrameworkDemo
//
//  Created by TaQi on 16/6/13.
//  Copyright © 2016年 TaQi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TaQiEntityBase.h"

@interface TaQiPagerEntityBase : TaQiEntityBase

/**
 *  当前页
 */
@property (nonatomic, assign) NSInteger Page;

/**
 *  每页显示行数
 */
@property (nonatomic, assign) NSInteger PageSize;

/**
 *  总行数
 */
@property (nonatomic, assign) NSInteger TotalCount;

/**
 *  总页数
 */
@property (nonatomic, assign) NSInteger PageCount;

/**
 *  排序条件
 */
@property (nonatomic, copy) NSString *Order;

/**
 *  列表集合
 */
@property (nonatomic, strong) NSArray *Result;

- (NSArray *)getPagerResultsWithModelType:(Class)modelType;

@end
